import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Define a class that implements an interface
class Dog implements Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
  
  // Method to demonstrate overriding an inherited method
  void bark() {
    print("Bark!");
  }
}

// Define a class that inherits from another class
class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}

void main() {
  // Create an instance of Dog class
  Dog dog = Dog();
  dog.makeSound(); // Output: Woof!
  dog.bark(); // Output: Bark!

  // Create an instance of Cat class
  Cat cat = Cat();
  cat.makeSound(); // Output: Meow!

  // Initialize an instance of a class with data from a file
  File file = File('data.txt');
  List<String> lines = file.readAsLinesSync();
  for (String line in lines) {
    print(line);
  }
  
  // Method that demonstrates the use of a loop
  print("Counting to 5:");
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}
