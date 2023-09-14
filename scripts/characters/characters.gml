function scrCharactersDefine()
{
	switch(Responde)
	{
		case "Flaky": NickDetected = "Flaky"		break;
		case "Toothy": NickDetected = "Toothy"		break;
		case "Cuddles": NickDetected = "Cuddles"	break;
		case "Giggles": NickDetected = "Giggles"	break;
		case "Petunia": NickDetected = "Petunia"	break;
		case "Nutty": NickDetected = "Nutty"		break;
	}
}

function scrCharaTalk()
{
	switch(NicksPending[listNumber])
	{
		case "Flaky":	global.Character = "Flaky"  dlc_text_to_speech(TextPending[listNumber], 100, 0, 9) global.Talker = 1 break;
		case "Toothy":	global.Character = "Toothy" dlc_text_to_speech(TextPending[listNumber], 100, 0, 7) global.Talker = 2 break;
	}
}

function scrCharactersFix()
{
	if !(Responde = "Flaky"
	|| Responde = "Toothy"
	|| Responde = "Cuddles"
	|| Responde = "Giggles"
	|| Responde = "Petunia"
	|| Responde = "Nutty")
	{NickDetected = "Nobody"}	
}

function sprite_index_3d(TAG)
{
	switch(Character)
	{
		case "Flaky":
			if TAG = "Talk"
			{
				with(objModelGen){State = "Listening"}
				State = "Talk"
				if image_index_3d = 0 {MODEL.texPack[0] = sprFlakyTalk}
				if image_index_3d > 0 {MODEL.texPack[0] = sprFlakyTalk}
				if image_index_3d > 1 {MODEL.texPack[0] = sprFlakyTalk1}
				if image_index_3d > 2 {MODEL.texPack[0] = sprFlakyTalk2}
				if image_index_3d > 3 {MODEL.texPack[0] = sprFlakyTalk1}
		
				if image_index_3d >= 4 
				{
					MODEL.texPack[0] = sprFlakyTalk
					image_index_3d = 0
				}
			}
			else
			if TAG = "Idle"
			{
				if image_index_3d = 0 {MODEL.texPack[0] = sprFlakyTalk}
				if image_index_3d > 0 {MODEL.texPack[0] = sprFlakyTalk}
				if image_index_3d > 1 {MODEL.texPack[0] = sprFlakyTalk1}
				if image_index_3d > 2 {MODEL.texPack[0] = sprFlakyTalk2}
				if image_index_3d > 3 {MODEL.texPack[0] = sprFlakyTalk1}
		
				if image_index_3d >= 4 
				{
					image_index_3d = 0
					MODEL.texPack[0] = sprFlakyTalk 
					image_speed = 0 
				}
			}
		break;
		case "Toothy":
			if TAG = "Talk"
			{
				with(objModelGen){State = "Listening"}
				State = "Talk"
				if image_index_3d = 0 {MODEL.texPack[0] = sprToothyTalk}
				if image_index_3d > 0 {MODEL.texPack[0] = sprToothyTalk}
				if image_index_3d > 1 {MODEL.texPack[0] = sprToothyTalk1}
				if image_index_3d > 2 {MODEL.texPack[0] = sprToothyTalk2}
				if image_index_3d > 3 {MODEL.texPack[0] = sprToothyTalk1}
		
				if image_index_3d >= 4 
				{
					MODEL.texPack[0] = sprToothyTalk
					image_index_3d = 0
				}
			}
			else
			if TAG = "Idle"
			{
				if image_index_3d = 0 {MODEL.texPack[0] = sprToothyTalk}
				if image_index_3d > 0 {MODEL.texPack[0] = sprToothyTalk}
				if image_index_3d > 1 {MODEL.texPack[0] = sprToothyTalk1}
				if image_index_3d > 2 {MODEL.texPack[0] = sprToothyTalk2}
				if image_index_3d > 3 {MODEL.texPack[0] = sprToothyTalk1}
		
				if image_index_3d >= 4 
				{
					image_index_3d = 0
					MODEL.texPack[0] = sprToothyTalk 
					image_speed = 0 
				}
			}
		break;
	}
}

function scrPosition()
{
	with(objModelGen)
	{
		if Character = "Flaky"
		{	
			global.PlayerXX[1] = x
			global.PlayerYY[1] = y
		}
		else
		if Character = "Toothy"
		{	
			global.PlayerXX[2] = x
			global.PlayerYY[2] = y
		}
	}	
}

function scrIdleFun()
{
	switch(Character)
	{
		case "Flaky": ANIM = "Flaky_Idle"; break;
		case "Toothy": ANIM = "Toothy_Idle"; break;
	}
}