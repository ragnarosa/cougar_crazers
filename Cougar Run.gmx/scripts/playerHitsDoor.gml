ini_open("playerData.ini");

if(global.stageID < 15)
{
    global.stageID++;
}
else
{
    global.stageID=0;
}


if(global.highestScore < score)
{
    global.highestScore = score;
}

ini_write_real("save01","HighestScore",global.highestScore);
ini_write_string("save01","Class",global.class);
ini_write_real("save01","stageID",global.stageID);
stageScore = score;
ini_write_real("save01","stageScore",global.stageScore);
ini_write_real("save01","scoreMul",global.scoreMul);

ini_close();


switch (global.stageID) //will automatically load room depends on where the player left off last time
{
    case 1: show_message("Wright Hall"); room_goto(wright); break;//
    case 2: show_message("Bullock Hall"); room_goto(bullock); break;//
    case 3: show_message("Jonas Clark Hall"); room_goto(jonas_clark); break;
    case 4: show_message("Johnson Sanford Center"); room_goto(jsc); break;
    case 5: show_message("Dodd Hall"); room_goto(dodd); break;
    case 6: show_message("Dana Hall"); room_goto(dana); break;
    case 7: show_message("Dana Commons"); room_goto(dana_commons); break;
    case 8: show_message("Hughes Hall"); room_goto(hughes); break;
    case 9: show_message("Blackstone Hall"); room_goto(blackstone); break;
    case 10: show_message("Lasry Center"); room_goto(lasry); break;
    case 11: show_message("Maywood Hall"); room_goto(maywood); break;
    case 12: show_message("Biophysics - Sackler Science Center"); room_goto(bp_sackler); break;
    case 13: show_message("Little Center"); room_goto(little_center); break;
    case 14: show_message("Carlson Hall"); room_goto(carlson_hall); break;
}


