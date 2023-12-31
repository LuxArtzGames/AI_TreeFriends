function createFileWithDatetime(fileName)
{
	if (!file_exists(fileName))
	{
		var fileHandle = file_text_open_write(fileName);
		var TopicStatus = "Topic: Open" + "\n";
		
	    // Obtener la fecha y hora actual
		var current_second_fix = 0;
		if current_second < 10
		{current_second_fix = "0"+string(current_second)}
		else
		if current_second >= 10
		{current_second_fix = string(current_second)}
		
		var current_minute_fix = 0;
		if current_minute < 10
		{current_minute_fix = "0"+string(current_minute)}
		else
		if current_minute >= 10
		{current_minute_fix = string(current_minute)}
		
	    var timeStamp = "|" + string(current_day) + "/" + string(current_month) + "/" + string(current_year) + " | " + string(current_hour) + ":" + string(current_minute_fix) + ":" + string(current_second_fix) + "|";

	    // Escribir la fecha y hora en el archivo
	    file_text_write_string(fileHandle, string(TopicStatus));
		file_text_write_string(fileHandle, "Fecha de Creación: " + string(timeStamp) + "\n");
		
		if instance_exists(objConversationGenerator)
		{file_text_write_string(fileHandle, "Nombre: " + string(objConversationGenerator.NameOfTopicSAVE) + "\n")}
	    file_text_close(fileHandle);
	}
	else
	{
	    show_debug_message("No se pudo abrir el archivo para escribir los datos.");
	}
}

function saveInfo(fileName, characterName, msg, topicname)
{
	if (file_exists(fileName))
	{
		var fileHandle = file_text_open_append(fileName);
    
	    // Reemplaza los caracteres de salto de línea al final de msg por espacios
	    msg = string_replace_all(msg, "\n", " ");
    
	    // Formatea la información y guárdala en el archivo
	    var dataToSave = string(characterName) + " " + msg + "\n";
    
	    file_text_write_string(fileHandle, dataToSave);
		
	    file_text_close(fileHandle);
	} 
	else 
	{
	    show_debug_message("No se pudo abrir el archivo para guardar los datos.");
	}
}

function loadInfo(fileName, pos)
{
	if (file_exists(fileName))
	{
		var NumberOfAdditions = 3
		
		var fileHandle = file_text_open_read(fileName);
		
		repeat(pos+NumberOfAdditions)
		{
			file_text_readln(fileHandle);
		}
	   
		var linea = file_text_readln(fileHandle); // Lee una línea del archivo
		// Divide la línea en nombre y mensaje utilizando el primer espacio como delimitador
		var espacio = string_pos(" ", linea);
		if (espacio != 0)
		{
			var nombrePersonaje = string_copy(linea, 1, espacio - 1); // Obtén el nombre del personaje
			NicksPending[pos] = nombrePersonaje;
			
			var mensaje = string_copy(linea, espacio + 1, string_length(linea)); // Obtén el mensaje completo
			TextPending[pos] = mensaje;
		}
		
		file_text_close(fileHandle); // Cierra el archivo después de leerlo
	}
	else
	{
		show_debug_message("No se pudo abrir el archivo para leer los datos.");
	}
}

function deleteInfo(fileName)
{
	if (file_exists(fileName))
	{file_delete(fileName)}
}

function delete_all_starter()
{
	var directory = "Topics" + "/"; // Reemplaza con la ruta de tu directorio

	var fileSearch = file_find_first(directory + "*.*", 0);

	while (fileSearch != "")
	{
	    // Elimina el archivo
	    var filePath = directory + fileSearch;
	    if (file_delete(filePath)) 
		{
	        show_debug_message("Archivo eliminado: " + filePath);
	    }
		else
		{
	        show_debug_message("Archivos ignorados: " + filePath);
	    }
    
	    // Encuentra el siguiente archivo
	    fileSearch = file_find_next();
	}
	
	show_debug_message("Los archivos que menos importan son los del %appdata%")

	file_find_close(); // Cierra la búsqueda
}

function readAndSortFilesByName()
{
	var directory = "Topics" + "/" ; // Reemplaza con la ruta de tu directorio
	var search = file_find_first(directory + "*.*", 0);
	var file_list = ds_list_create();

	while (search != "") 
	{
	    ds_list_add(file_list, search);
	    search = file_find_next();
	}
	
	// Ordena la lista de archivos alfabéticamente por nombre en orden inverso
	ds_list_sort(file_list, true); // Cambia a false para ordenar en orden ascendente

	// Ahora puedes iterar sobre los archivos en orden inverso
	var num_files = ds_list_size(file_list);
	var file_name = ds_list_find_value(file_list, 0);
	
	var TrueFileName = string(directory) + string(file_name);
	var LINE = 0;
	
	with(objCamera)
	{TimeCard = false TimeCardSound = false}

	global.DisableModelsDuringPause = false
	Texto = "Terminando"
		
	if file_exists(TrueFileName)
	{
		var fileHandle = file_text_open_read(TrueFileName);
	
		while (!file_text_eof(fileHandle))
	    {
	        var line = file_text_readln(fileHandle);
	        LINE++
	    }
		
		file_text_close(fileHandle);
	}
		
	SizeOfTopic = LINE-1
	
	for (var i = 1; i <= SizeOfTopic; i++)
	{
		loadInfo(string(TrueFileName), i-1)
		listLimit = i-1
	}
	
	// Realiza acciones con el archivo
	show_debug_message("Siguiente Archivo: " + string(file_name));
		
	// Limpia la lista de archivos
	ds_list_destroy(file_list);
		
	ClosedTopicWaitToNext = 3
}

function FindLastTxtFileInDirectory()
{
    var directory = "Topics" + "/";
    var lastTxtFile = "";
    var search = file_find_first(directory + "*.txt", 0);

    while (search != "")
	{
        lastTxtFile = search; // Guarda el nombre del archivo actual
        search = file_find_next();
    }

    file_find_close();
    
    return (lastTxtFile != ""); // Devuelve true si se encontró un archivo TXT, false en caso contrario
}

function ReplaceStringToNew(fileName, textoOriginal, textoReemplazar)
{
	if file_exists(fileName)
	{
		var fileHandle = file_text_open_read(fileName);
	    var fileContent = "";
	
	    if (fileHandle != -1)
	    {
			var linea = file_text_readln(fileHandle);
			
	        // Leer el contenido del archivo línea por línea
	        while (!file_text_eof(fileHandle))
	        {
	            linea = file_text_readln(fileHandle);
	            fileContent += linea;
	        }
		
			file_text_close(fileHandle);
		
			var fileHandle2 = file_text_open_write(fileName);
			string_delete(textoOriginal, 0, string_length(textoOriginal))
			file_text_write_string(fileHandle2, textoReemplazar + "\n");
			file_text_write_string(fileHandle2, fileContent)

			file_text_close(fileHandle2);
		}
	}
}

function FindString(archivo, stringBuscado)
{
    if file_exists(archivo)
    {
        var fileHandle = file_text_open_read(archivo);
        var encontrado = false;
        var linea;
        
        while (!file_text_eof(fileHandle)) 
        {
            linea = file_text_readln(fileHandle);
            if (string_pos(stringBuscado, linea) > 0)
            {
                encontrado = true;
                break;
            }
        }
        
        file_text_close(fileHandle);
        return encontrado;
    }
    else
    {
        show_debug_message("El archivo no existe.");
        return false;
    }
}

function FindFirst()
{
    var directory = "Topics" + "/";
    var search = file_find_first(directory + "*.txt", 0);
    var firstTxtFile = "";

    if (search != "") 
    {
        firstTxtFile = string(search);
        file_find_close();
    }

    return firstTxtFile;
}

function FindLast()
{
    var directory = "Topics" + "/"
    
    var lastTxtFile = "";
    var search = file_find_first(directory + "*.*", 0);

    while (search != "") 
    {
        lastTxtFile = search;
        search = file_find_next();
    }

    file_find_close();
	
    return lastTxtFile;
}

function FixString(palabra)
{
    // Lista de nombres a verificar
    var nombresIncorrectos = ["flaky", "toothy", "handy", "giggles", "petunia"]
	
	var nombresNormales = ["Flaky", "Toothy", "Handy", "Giggles", "Petunia"];
    var encontrado = false;
	
	// Convierte la primera letra en mayúscula y las demás en minúscula
	palabra = string_lower(string_copy(palabra, 1, string_length(palabra)));
	
	for (var i = 0; i < array_length_1d(nombresIncorrectos); i++)
	{
		var nombre = nombresIncorrectos[i];
		
		// Verifica si la palabra comienza con uno de los nombres
        if (string_pos(nombre, palabra) == 1)
        {
			// Convierte la primera letra en mayúscula y las demás en minúscula
			palabra = string_lower(string_copy(nombre, 1, string_length(nombre)));
        
			// Convierte la primera letra en mayúscula y las demás en minúscula
			palabra = string_upper(string_copy(nombre, 1, 1)) + string_lower(string_copy(nombre, 2, string_length(nombre)));
		}
	}                
	
    for (var i = 0; i < array_length_1d(nombresNormales); i++)
    {
        var nombre = nombresNormales[i];
		
        // Verifica si la palabra comienza con uno de los nombres
        if (string_pos(nombre, palabra) == 1)
        {
            encontrado = true;
            
            // Obtén las palabras adicionales después del nombre
            var palabrasAdicionales = string_copy(palabra, string_length(nombre) + 1, string_length(palabra));
            
            // Si hay palabras adicionales, agrégalas al nombre
            if (string_length(palabrasAdicionales) > 0)
            {
				palabra = nombre;
			}
            
            break;
        }
    }
    
    if (!encontrado)
    {
        // Si no se encontró ninguno de los nombres, agrega "Flaky" por defecto
        palabra = "Crowd"
    }
    
    return palabra;
}