#include <iostream>
#include <ctime>
#include <cstdlib>

using namespace std;

int main(){
  cout << "Welcome to Number Guessing Game" << endl;
  srand(time(NULL)); // seeding random number generator
  int my_number = rand() % 100; // Generate random number
  int guess = 0;
  cout << "I am thinking of a number between 1 and 100 " << endl;
  while (guess != my_number){
    cout << "Guess my number:";
    cin >> guess;
    if (guess == my_number){
      cout << "\nYou Guessed it!!!"<< endl;
      break;
    }else if (guess > my_number){
      cout << "Lower ..." << endl;
    }else{
      cout << "Higher ..." << endl;
    }
  }
  return 0;
}
