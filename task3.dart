//Yahya Iqbal
//461442

import 'dart:io';

void main(){
print("Calculate when you will turn 100 years old ");

bool loop= true;

while(loop){

stdout.write("Enter your age: ");
String? input =stdin.readLineSync();

if(input == null || input.isEmpty){
print("Please enter a valid age");
continue;

}
try{
int age = int.parse(input);

if(age<0){
print("Age cannot be negative");
}
else if(age>=100){
print("Your have already reached 100!");

}
else{
int yearsLeft = 100-age;

print("You have $yearsLeft years left until you reach 100 years old");
}



stdout.write("Do you want to check again? (yes/no): ");
      String? response = stdin.readLineSync();
      if (response == null || response.toLowerCase() != 'yes') {
        loop = false; 
      }
}
catch(e){
print("Please enter a valid number! ");

}
} 
}