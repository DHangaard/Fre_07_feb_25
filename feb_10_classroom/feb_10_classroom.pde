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

int timeSec = 150;
int score = 0;
int rescuedKittensNum = 4;
int treasureNum = 2;
boolean escaped = false;

void setup() {

  if (!escaped) {
    score = score - rescuedKittensNum - treasureNum;
    println("You failed! Score: " + score);
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
    score += rescuedKittensNum * treasureNum;
    println("You escaped! Score: " + score);
  }
}

void draw() {
}
