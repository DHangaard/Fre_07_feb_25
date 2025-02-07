int number;

void setup() {
  frameRate(2); // frameRate 2 for continous numbers
}

void draw() {
  number = (int)(random(1, 11)); // provides random number between 1 and 10

  if (number % 2 == 0) {
    println("The number " + number + " is even!"); // print if number is even
  } else {
    println("The number " + number + " is uneven!"); // print if number is uneven
  }
}
