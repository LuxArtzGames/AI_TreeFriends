{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "dlcext",
  "androidactivityinject": "",
  "androidclassname": "",
  "androidcodeinjection": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidPermissions": [],
  "androidProps": false,
  "androidsourcedir": "",
  "author": "",
  "classname": "",
  "copyToTargets": 64,
  "date": "2020-08-27T03:23:17",
  "description": "",
  "exportToGame": true,
  "extensionVersion": "1.6.0",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"DLC_PF_TYPE_UPNP","hidden":false,"value":"0",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"DLC_PF_TYPE_NATPMP","hidden":false,"value":"1",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"DLC_PF_PROT_TCP","hidden":false,"value":"0",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"DLC_PF_PROT_UDP","hidden":false,"value":"1",},
      ],"copyToTargets":64,"filename":"dlcext.dll","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"RegisterCallbacks","argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"documentation":"","externalName":"RegisterCallbacks","help":"arg1, arg2, arg3, arg4","hidden":true,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_initialize","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"initialize","help":"true","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_enable_logging","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"enable_logging","help":"toggle","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_set_log_expiration","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"set_log_expiration","help":"days","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_message_log","argCount":0,"args":[
            1,
            1,
            1,
          ],"documentation":"","externalName":"message_log","help":"msg, prefix, file","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_mouse_lock","argCount":0,"args":[
            2,
            2,
            2,
            2,
          ],"documentation":"","externalName":"mouse_lock","help":"x, y, width, height","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_mouse_is_locked","argCount":0,"args":[],"documentation":"","externalName":"mouse_is_locked","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_mouse_unlock","argCount":0,"args":[],"documentation":"","externalName":"mouse_unlock","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_get_local_ipv4","argCount":0,"args":[],"documentation":"","externalName":"get_local_ipv4","help":"","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_get_public_ipv4","argCount":0,"args":[],"documentation":"","externalName":"get_public_ipv4","help":"","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_set_port_fwd","argCount":0,"args":[
            1,
            2,
            1,
            2,
          ],"documentation":"","externalName":"set_port_fwd","help":"description, port, protocol, type","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_clear_port_fwd","argCount":0,"args":[
            2,
            1,
            2,
          ],"documentation":"","externalName":"clear_port_fwd","help":"port, protocol, type","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_text_to_speech","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"text_to_speech","help":"text","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_tts_set_opt","argCount":0,"args":[
            2,
            2,
            2,
            2,
          ],"documentation":"","externalName":"tts_set_opt","help":"voice, volume, rate, pitch","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_tts_stop_talking","argCount":0,"args":[],"documentation":"","externalName":"tts_stop_talking","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_tts_is_talking","argCount":0,"args":[],"documentation":"","externalName":"tts_is_talking","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_tts_get_voice_count","argCount":0,"args":[],"documentation":"","externalName":"tts_get_voice_count","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_tts_get_voice_desc","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"tts_get_voice_desc","help":"index","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_generate_invite_code","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"generate_invite_code","help":"ipv4","hidden":true,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_translate_invite_code","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"translate_invite_code","help":"code","hidden":true,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_generate_session_code","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"generate_session_code","help":"ipv4, pass","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_translate_session_code","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"translate_session_code","help":"code, pass","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_get_registry","argCount":0,"args":[
            1,
            1,
            1,
          ],"documentation":"","externalName":"get_registry","help":"hkey, path, item","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_set_registry","argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"documentation":"","externalName":"set_registry","help":"hkey, path, item, value","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_delete_registry_value","argCount":0,"args":[
            1,
            1,
            1,
          ],"documentation":"","externalName":"delete_registry_value","help":"hkey, path, item","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_delete_registry_key","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"delete_registry_key","help":"hkey, path","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_create","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"voice_create","help":"port","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_enable_loopback","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"voice_enable_loopback","help":"toggle","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_get_device_count","argCount":0,"args":[],"documentation":"","externalName":"voice_get_device_count","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_get_device_desc","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"voice_get_device_desc","help":"index","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_set_device","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"voice_set_device","help":"index","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_connect","argCount":0,"args":[
            1,
            2,
            2,
          ],"documentation":"","externalName":"voice_connect","help":"ipv4, port, id","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_enable_reverb","argCount":0,"args":[
            2,
            2,
          ],"documentation":"","externalName":"voice_enable_reverb","help":"id, toggle","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_set_balance","argCount":0,"args":[
            2,
            2,
          ],"documentation":"","externalName":"voice_set_balance","help":"id, balance","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_set_volume_client","argCount":0,"args":[
            2,
            2,
          ],"documentation":"","externalName":"voice_set_volume_client","help":"id, volume","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_set_volume_self","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"voice_set_volume_self","help":"volume","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_mute_client","argCount":0,"args":[
            2,
            2,
          ],"documentation":"","externalName":"voice_mute_client","help":"id, toggle","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_mute_self","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"voice_mute_self","help":"toggle","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_activation_enable","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"voice_activation_enable","help":"toggle","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_activation_set_threshold","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"voice_activation_set_threshold","help":"threshold","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_activation_get_peak","argCount":0,"args":[],"documentation":"","externalName":"voice_activation_get_peak","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_push_to_talk","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"voice_push_to_talk","help":"toggle","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_is_talking","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"voice_is_talking","help":"id","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_disconnect","argCount":0,"args":[],"documentation":"","externalName":"voice_disconnect","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_voice_destroy","argCount":0,"args":[],"documentation":"","externalName":"voice_destroy","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_archive_create","argCount":0,"args":[
            1,
            2,
          ],"documentation":"","externalName":"archive_create","help":"archive, max_files","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_archive_delete","argCount":0,"args":[
            1,
            2,
          ],"documentation":"","externalName":"archive_delete","help":"file_or_folder, recursive","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_archive_file_add","argCount":0,"args":[
            1,
            1,
            1,
          ],"documentation":"","externalName":"archive_file_add","help":"archive, source, dest","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_archive_file_remove","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"archive_file_remove","help":"archive, file","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_archive_file_read","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"archive_file_read","help":"archive, file","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_archive_file_extract","argCount":0,"args":[
            1,
            1,
            1,
          ],"documentation":"","externalName":"archive_file_extract","help":"archive, source, dest","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_archive_file_rename","argCount":0,"args":[
            1,
            1,
            1,
          ],"documentation":"","externalName":"archive_file_rename","help":"archive, source, dest","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_archive_get_file_count","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"archive_get_file_count","help":"archive","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_warden_get","argCount":0,"args":[
            2,
            2,
            2,
            2,
          ],"documentation":"","externalName":"warden_get","help":"id, index, value, check","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_warden_set","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"","externalName":"warden_set","help":"id, index, value","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_warden_purge","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"warden_purge","help":"id","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_warden_pv","argCount":0,"args":[],"documentation":"","externalName":"warden_pv","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_warden_og","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"","externalName":"warden_og","help":"id, index, value","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_asr_monitor_mic","argCount":0,"args":[
            1,
            1,
            2,
            2,
          ],"documentation":"","externalName":"asr_monitor_mic","help":"model, language, threshold, translate","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_asr_monitor_stop","argCount":0,"args":[],"documentation":"","externalName":"asr_monitor_stop","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_asr_is_listening","argCount":0,"args":[],"documentation":"","externalName":"asr_is_listening","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_asr_get_status","argCount":0,"args":[],"documentation":"","externalName":"asr_get_status","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_twitch_connect","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"twitch_connect","help":"channel","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_twitch_is_connected","argCount":0,"args":[],"documentation":"","externalName":"twitch_is_connected","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_twitch_disconnect","argCount":0,"args":[],"documentation":"","externalName":"twitch_disconnect","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_chess_board_create","argCount":0,"args":[
            2,
            2,
            2,
            2,
            2,
            2,
            2,
          ],"documentation":"","externalName":"chess_board_create","help":"players, white, visible, style1, style2, scale, timeout","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_chess_board_set","argCount":0,"args":[
            1,
            2,
          ],"documentation":"","externalName":"chess_board_set","help":"fen, white","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_chess_board_reset","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"chess_board_reset","help":"white","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_chess_board_get_square","argCount":0,"args":[
            2,
            2,
          ],"documentation":"","externalName":"chess_board_get_square","help":"file, rank","hidden":false,"kind":1,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_chess_board_get_file","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"chess_board_get_file","help":"square","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_chess_board_get_rank","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"chess_board_get_rank","help":"square","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_chess_board_destroy","argCount":0,"args":[],"documentation":"","externalName":"chess_board_destroy","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_chess_piece_pickup","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"chess_piece_pickup","help":"square","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_chess_piece_promote","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"chess_piece_promote","help":"next","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_chess_piece_commit","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"chess_piece_commit","help":"square","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_chess_move_do","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"chess_move_do","help":"move","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_chess_move_undo","argCount":0,"args":[],"documentation":"","externalName":"chess_move_undo","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_chess_resign","argCount":0,"args":[],"documentation":"","externalName":"chess_resign","help":"","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_bitset_create","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"bitset_create","help":"flag","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_bitset_get_bit","argCount":0,"args":[
            2,
            2,
          ],"documentation":"","externalName":"bitset_get_bit","help":"bitset, pos","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_bitset_set_bit","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"","externalName":"bitset_set_bit","help":"bitset, pos, flag","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_bitset_flip","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"bitset_flip","help":"bitset","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_bitset_test","argCount":0,"args":[
            2,
            2,
          ],"documentation":"","externalName":"bitset_test","help":"bitset, test","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_bitset_count","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"bitset_count","help":"bitset","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_bitset_from_string","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"bitset_from_string","help":"bitstring","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"dlc_bitset_to_string","argCount":0,"args":[
            2,
          ],"documentation":"","externalName":"bitset_to_string","help":"bitset","hidden":false,"kind":1,"returnType":1,},
      ],"init":"","kind":1,"order":[
        {"name":"RegisterCallbacks","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_initialize","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_enable_logging","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_set_log_expiration","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_message_log","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_mouse_lock","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_mouse_is_locked","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_mouse_unlock","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_get_local_ipv4","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_get_public_ipv4","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_set_port_fwd","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_clear_port_fwd","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_text_to_speech","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_tts_set_opt","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_tts_stop_talking","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_tts_is_talking","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_tts_get_voice_count","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_tts_get_voice_desc","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_generate_invite_code","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_translate_invite_code","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_generate_session_code","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_translate_session_code","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_get_registry","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_set_registry","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_delete_registry_value","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_delete_registry_key","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_create","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_enable_loopback","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_get_device_count","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_get_device_desc","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_set_device","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_connect","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_enable_reverb","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_set_balance","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_set_volume_client","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_set_volume_self","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_mute_client","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_mute_self","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_activation_enable","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_activation_set_threshold","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_activation_get_peak","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_push_to_talk","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_is_talking","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_disconnect","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_voice_destroy","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_archive_create","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_archive_delete","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_archive_file_add","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_archive_file_remove","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_archive_file_read","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_archive_file_extract","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_archive_file_rename","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_archive_get_file_count","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_warden_get","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_warden_set","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_warden_purge","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_warden_pv","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_warden_og","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_asr_monitor_mic","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_asr_monitor_stop","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_asr_is_listening","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_asr_get_status","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_twitch_connect","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_twitch_is_connected","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_twitch_disconnect","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_chess_board_create","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_chess_board_set","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_chess_board_reset","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_chess_board_get_square","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_chess_board_get_file","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_chess_board_get_rank","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_chess_board_destroy","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_chess_piece_pickup","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_chess_piece_promote","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_chess_piece_commit","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_chess_move_do","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_chess_move_undo","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_chess_resign","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_bitset_create","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_bitset_get_bit","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_bitset_set_bit","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_bitset_flip","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_bitset_test","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_bitset_count","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_bitset_from_string","path":"extensions/dlcext/dlcext.yy",},
        {"name":"dlc_bitset_to_string","path":"extensions/dlcext/dlcext.yy",},
      ],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
  ],
  "gradleinject": "",
  "hasConvertedCodeInjection": true,
  "helpfile": "",
  "HTML5CodeInjection": "",
  "html5Props": false,
  "IncludedResources": [],
  "installdir": "",
  "iosCocoaPodDependencies": "",
  "iosCocoaPods": "",
  "ioscodeinjection": "",
  "iosdelegatename": "",
  "iosplistinject": "",
  "iosProps": false,
  "iosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "license": "",
  "maccompilerflags": "",
  "maclinkerflags": "",
  "macsourcedir": "",
  "options": [],
  "optionsFile": "options.json",
  "packageId": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "productId": "",
  "sourcedir": "",
  "supportedTargets": -1,
  "tvosclassname": "",
  "tvosCocoaPodDependencies": "",
  "tvosCocoaPods": "",
  "tvoscodeinjection": "",
  "tvosdelegatename": "",
  "tvosmaccompilerflags": "",
  "tvosmaclinkerflags": "",
  "tvosplistinject": "",
  "tvosProps": false,
  "tvosSystemFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
}