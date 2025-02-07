int number;
int divideBy;

void setup() {
 frameRate(2); 
}
void draw() {
  number = (int)(random(11)); // provides random number between 1 and 10
  divideBy = 2;


  if (number % divideBy == 0) {
    println("The number " + number + " is even!"); //print if number is even
  } else {
    println("The number " + number + " is uneven!"); //print if number is negative
  }
}

//number = number % divideBy == 0 ? println("The number is even!") : println("The number is uneven!");
