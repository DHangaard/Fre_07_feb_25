/*
 Pseudocode:
 Variables:
 Time timeSec (2min30sec)
 Score score = 0
 Kittens rescuedKittensNum = 0
 Treasure treasureNUum = 0
 boolean escaped
 
 Code:
 1. if escaped= false
 2. subtract kittens + coins from score
 print statement
 
 3. if escaped
 4. if timeSec >= 120
 score = 100
 
 5. else if timeSec >= 90
 score = 80
 
 6. else if timeSec >= 60
 score = 50
 
 7. else if timeSec >= 30
 score = 10
 
 8. Add score
 
 9. Print statement
 */

int timeSec = (int) random(0, 150);
int score = 0;
int rescuedKittensNum = (int) random(0, 11);
int treasureNum = (int) random(0, 6);
boolean escaped = false;

//Use this boolean to set random true or false (.5 is 50% chance of escaping/!escaping  -- Remember to out comment line 48-52 if used
//boolean escaped = random(1) < .5;

int treasureCalc;
int rescuedKittensCalc;

void setup() {

  //Sets the escaped boolean to true or false, true if seconds are left.
  if (timeSec == 0) {
    escaped = false;
  } else {
    escaped = true;
  }

  if (!escaped) {
    score = score - rescuedKittensNum - treasureNum;
    println("You failed! Score: " + score);
    println(timeSec);
  } else if (escaped) {
    if (timeSec >= 120) {
      score += 100;
    } else if (timeSec >= 90) {
      score += 80;
    } else if (timeSec >= 60) {
      score += 50;
    } else if (timeSec >= 30) {
      score += 10;
    }

    //Sets the calculating number for found treasures to 1 if no kittens have been saved (You cant multiply with 0!!!!)
    if (treasureNum == 0) {
      treasureCalc = 1;
    } else {
      treasureCalc = treasureNum;
    }

    //Sets the calculating number for rescued kittens to 1 if no kittens have been saved (You cant multiply with 0!!!!)
    if (rescuedKittensNum == 0) {
      rescuedKittensCalc = 1;
    } else {
      rescuedKittensCalc = rescuedKittensNum;
    }

    //Calculating highscore if escaped
    score += rescuedKittensCalc * treasureCalc;

    //Printing if escaped text
    println("You escaped with " + timeSec + " seconds left!");
    println("You rescued " + rescuedKittensNum + " kittens!");
    println("You found " + treasureNum + " treasures!");
    println("Total score: " + score);
  }
}
