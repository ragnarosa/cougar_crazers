global.paused = 1;
enemy.speed=0;
player.speed=0;

global.menuID=questionBox_create(view_xview+100,view_yview+150)

//if (global.stageID==0){

global.questionID = irandom_range(0, 9); 
global.questionID = questionID+1;

question = global.questions[questionID];
first_option = global.option1[questionID];
second_option = global.option2[questionID];
third_option = global.option3[questionID];
fourth_option = global.option4[questionID];

questionBox_option(global.menuID, question);
questionBox_option(global.menuID,first_option);
questionBox_option(global.menuID,second_option);
questionBox_option(global.menuID,third_option);
questionBox_option(global.menuID,fourth_option);

//} else if (global.stageID==2){

//} else if (global.stageID==3){

//} else if (global.stageID==4){

//} else {

//}

