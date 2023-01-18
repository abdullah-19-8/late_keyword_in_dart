// we can use multiple assignments with the 'late' keyword
// but we can't use it with the 'final' keyword

void main(List<String> args) {
  final person = Person();
  // we can use multiple assignments with the 'late' keyword
  person.name = "John";
  print(person.name);
  person.name = "Abdullah";
  print(person.name);

  // but we can't use it with the 'final' keyword
  final dog = Dog();
  dog.name = "dog";
  print(dog.name);
  // but if we try to assign it again, we get an exception, and the program crashes
  try{
    dog.name = "dog2";
  } catch(e){
    print(e); // Exception: LateInitializationError: Field 'name' has already been initialized.
  }
}

class Person {
  late String name;

}

class Dog{
  late final String name;
}
