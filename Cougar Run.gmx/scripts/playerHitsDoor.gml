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
livesLeft = lives;
show_message(livesLeft);
ini_write_real("save01","livesLEft", livesLeft);
show_message("saving");
show_message(livesLeft);
show_message(lives);

ini_close();


switch (global.stageID) //will automatically load room depends on where the player left off last time
{
    case 0: room_goto(room_test); break;//only for beta
    case 1: room_goto(wright); break;//
    case 2: room_goto(bullock); break;//
    case 3: room_goto(atwood_jefferson); break;
    case 4: room_goto(jonas_clark); break;
    case 5: room_goto(jsc); break;
    case 6: room_goto(dodd); break;
    case 7: room_goto(dana); break;
    case 8: room_goto(dana_commons); break;
    case 9: room_goto(hughes); break;
    case 10: room_goto(blackstone); break;
    case 11: room_goto(lasry); break;
    case 12: room_goto(maywood); break;
    case 13: room_goto(bp_sackler); break;
    case 14: room_goto(little_center); break;
    case 15: room_goto(carlson_hall); break;
}


