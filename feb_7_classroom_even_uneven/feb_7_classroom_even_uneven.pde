int number;
int divideBy;

void setup() {
  number = 10;
  divideBy = 2;


  if (number % divideBy == 0) {
    println("The number " + number + " is even!");
  } else {
    println("The number " + number + " is uneven!");
  }
}

//number = number % divideBy == 0 ? println("The number is even!") : println("The number is uneven!");
