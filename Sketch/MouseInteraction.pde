// interactiunea cu mouseul, butoane iepuri, etc;
void checkMouseOver(int x, int y, int bWidth, int bHeight, String s){
  // schimb ca puntul sa fie in stanga sus
  x = x - bWidth / 2;
  y = y - bHeight / 2;
  // daca mouse-ul este pozitionat pe buton pune flag = s pentru a sti ce buton este apasat
  if(mouseX >= x && mouseY >= y && mouseX <= x + bWidth && mouseY <= y + bHeight){
    mouseOver = true;
    MouseFlag = s;
    return;
  }
  // daca ultimul flag este egal cu textul butonului atunci setez flag la false
  if(MouseFlag == s){
    mouseOver = false;
  }
}

void mousePressed(){
   //click.play();
  if(mouseOver){

    if( egal(MouseFlag, startString) == true ){
      resetAutoSolving();
      startButton();
    } else if( egal(MouseFlag, exitString) == true ){
      exitButton();
    } else if( egal(MouseFlag, optionsString) == true ){
     enterOptionButton();
    } else if(egal(MouseFlag, optionsExitString) == true){
      exitOptionButton();
    } else if(egal(MouseFlag, quitString) == true){
       quitButton();
    } else if( egal(MouseFlag, selectLevelString) == true ){
      enterSelectLevel();
    } else if( egal(MouseFlag, instructionString) == true ){
      enterInstructions();
    } if( egal(MouseFlag, undoString) == true ){
      pressedUndo();
    } else if( egal(MouseFlag, solveString) == true ){
      println("Solving");
      levelSolving = true;
    }
    // level selectin
    else if( egal(MouseFlag, challenge_1) == true){
      println("Challenge 1 Selected");
      setGameTable(challengeOneTable);
      Challenge = 1;
      selectLevel = false;
      gameStart = true;
      countRabbitsBegining();
    } else if( egal(MouseFlag, challenge_2) == true){
      println("Challenge 2 Selected");
      setGameTable(challengeTwoTable);
      Challenge = 2;
      selectLevel = false;
      gameStart = true;
      countRabbitsBegining();
    } else if( egal(MouseFlag, challenge_3) == true){
      println("Challenge 3 Selected");
      setGameTable(challengeThreeTable);
      Challenge = 3;
      selectLevel = false;
      gameStart = true;
      countRabbitsBegining();
    } else if( egal(MouseFlag, challenge_4) == true){
      println("Challenge 4 Selected");
      setGameTable(challengeFourTable);
      Challenge = 4;
      selectLevel = false;
      gameStart = true;
      countRabbitsBegining();
    } else if( egal(MouseFlag, challenge_5) == true){
      println("Challenge 5 Selected");
      setGameTable(challengeFiveTable);
      Challenge = 5;
      selectLevel = false;
      gameStart = true;
      countRabbitsBegining();
    } else if( egal(MouseFlag, challenge_6) == true){
      println("Challenge 6 Selected");
      setGameTable(challengeSixTable);
      Challenge = 6;
      selectLevel = false;
      gameStart = true;
      countRabbitsBegining();
    } else if( egal(MouseFlag, challenge_7) == true){
      println("Challenge 7 Selected");
      setGameTable(challengeSevenTable);
      Challenge = 7;
      selectLevel = false;
      gameStart = true;
      countRabbitsBegining();
    } else if( egal(MouseFlag, challenge_8) == true){
      println("Challenge 8 Selected");
      setGameTable(challengeEightTable);
      Challenge = 8;
      selectLevel = false;
      gameStart = true;
      countRabbitsBegining();
    } else if( egal(MouseFlag, challenge_9) == true){
      println("Challenge 9 Selected");
      setGameTable(challengeNineTable);
      Challenge = 9;
      selectLevel = false;
      gameStart = true;
      countRabbitsBegining();
    }

    else if( egal(MouseFlag, nextLevel) == true){
      gameStart  = true;
      gameFinished = false;
      score = 0;
      emptyList();
      determinareNivel(Challenge);
      countRabbitsBegining();
    }
    //animals
    else if( egal(MouseFlag, flagROne) == true ){
      lockedFirstRabbit = true;
      xOffset = mouseX - jFirstRabbit;
      yOffset = mouseY - iFirstRabbit;
      iInitialFirstRabbit = convertCoordToI(iFirstRabbit);
      jInitialFirstRabbit = convertCoordToJ(jFirstRabbit);
      // TODO
      drawPossibleMoves(iInitialFirstRabbit, jInitialFirstRabbit);

    } else if( egal(MouseFlag, flagRTwo) ==true ){
      lockedSecondRabbit = true;
      xOffset = mouseX - jSecondRabbit;
      yOffset = mouseY - iSecondRabbit;
      iInitialSecondRabbit = convertCoordToI(iSecondRabbit);
      jInitialSecondRabbit = convertCoordToJ(jSecondRabbit);

      // TODO
      drawPossibleMoves(iInitialSecondRabbit, jInitialSecondRabbit);

    } else if( egal(MouseFlag, flagRThree) == true ){
      lockedThirdRabbit = true;
      xOffset = mouseX - jThirdRabbit;
      yOffset = mouseY - iThirdRabbit;
      iInitialThirdRabbit = convertCoordToI(iThirdRabbit);
      jInitialThirdRabbit = convertCoordToJ(jThirdRabbit);

      // TODO
      drawPossibleMoves(iInitialThirdRabbit, jInitialThirdRabbit);

    } else if( egal(MouseFlag, flagFOne) == true ){
      lockedFox = true;
      xOffset = mouseX - coordonateFoxHJ;
      yOffset = mouseY - coordonateFoxHI;
      if((coordonateFoxHJ - 25) / cellDistY == 0){
         putDataInList("FH", fOneI, 1);
      }else{
       putDataInList("FH", fOneI, (coordonateFoxHJ - 25) / cellDistY);
      }
    }else if(egal(MouseFlag, flagFTwo) == true){
      lockedSecondFox = true;
      xOffset = mouseX - coordonateFoxVI;
      yOffset = mouseY - coordonateFoxVJ;
      if(( coordonateFoxVJ - 25) / cellDistX == 0){
        putDataInList("FV", fSecondI, 1);
      }else{
        putDataInList("FV", fSecondI, ( coordonateFoxVJ - 25) / cellDistX);
      }
    }
    //changeLanguage
    else if(egal(MouseFlag, romania) == true){
      changeRomaniaLanguage();
    } else if(egal(MouseFlag, india) == true){
      changeIndiaLanguage();
    } else if(egal(MouseFlag, china) == true){
      changeChinaLanguage();
    } else if(egal(MouseFlag, france) == true){
     changeFranceLanguage();
    } else if(egal(MouseFlag, germany) == true){
     changeGermanyLanguage();
    } else if( egal(MouseFlag, firstMusic) == true ){
      backgroundMusic.stop();
      backgroundMusic = new SoundFile(this, "./Music/bckMusic1.wav");
      backgroundMusic.loop();
    } else if( egal(MouseFlag, secondMusic) == true ){
      backgroundMusic.stop();
      backgroundMusic = new SoundFile(this, "./Music/bckMusic2.wav");
      backgroundMusic.loop();
    } else if( egal(MouseFlag, noSoundString) == true ){
      backgroundMusic.stop();
    }
    // dark button
    else if( egal(MouseFlag, darkSwitcher) == true ){
      darkMode = !darkMode;
      if(darkMode){
        changeToDark();
      } else {
        changeToNormal();
      }

    }

    MouseFlag = "";
  }
}
