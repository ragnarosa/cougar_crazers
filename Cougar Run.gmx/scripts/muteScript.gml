if (global.musicPlaying = 1){
    audio_master_gain(0)
    global.musicPlaying = 0
}else if (global.musicPlaying = 0){
    audio_master_gain(1)
    global.musicPlaying = 1
}
