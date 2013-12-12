if(global.paused = 0){
    enemy.speed=0;
    player.speed=0;
    audio_master_gain(0)
    global.paused = 1;
} else if (global.paused = 1){
    enemy.speed=3;
    player.speed=5;
    audio_master_gain(1)
    global.paused = 0
}
