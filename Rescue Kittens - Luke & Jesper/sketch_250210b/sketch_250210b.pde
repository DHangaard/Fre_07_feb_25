int score = 100;
int rescuedKittensNum;
int treasureNum;
int seconds;
boolean escaped = true;


void setup() {
  seconds = (int) random(10, 121);
  rescuedKittensNum =(int) random(1,11);
  treasureNum = (int) random(1,11);
  
  println("Seconds used: " + seconds);
  println("Rescued Kittins used: " + rescuedKittensNum);
  println("Treasures collected: " + treasureNum);



  if (!escaped) {
    score = score - rescuedKittensNum - treasureNum;
    println ("you failed escaping, your score is " + score);
  } else if (escaped) {
    if (seconds <= 30) {
      score = score + 100 + rescuedKittensNum * treasureNum;
      println ("you escaped in less than 30 seconds! Your score is " + score);
    } else if (escaped) {
      if (seconds <=60) {
        score = score + 80 + rescuedKittensNum * treasureNum;
        println ("you escaped in less than 60 seconds! Your score is " + score);
      } else if (escaped) {
        if (seconds <=90) {
          score = score + 50 + rescuedKittensNum * treasureNum;
          println ("you escaped in less than 90 seconds! Your score is " + score);
        } else if (escaped) {
          if (seconds <=120) {
            score = score + 10 + rescuedKittensNum * treasureNum;
            println ("you escaped in less than 120 seconds! Your score is " + score);
          }
        }
      }
    }
  }
}
