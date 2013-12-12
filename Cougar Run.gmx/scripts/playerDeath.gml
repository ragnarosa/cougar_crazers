ini_open("playerData.ini");
if(global.highestScore < score)
{
    global.highestScore = score;
    scr_update_gmscore(global.playername,score);
    show_message("score_updated!");
}
ini_write_real("save01","HighestScore",global.highestScore);
ini_write_string("save01","Class",global.class);
stageID = 0;
ini_write_real("save01","stageID",global.stageID);
stageScore = 0;
ini_write_real("save01","stageScore",global.stageScore);
scoreMul = 1;
ini_write_real("save01","scoreMul",global.scoreMul);
lives = 3;
livesLeft = lives;
ini_write_real("save01","livesLeft", livesLeft);

ini_close();
room_goto(room_menu);
audio_master_gain(0)
