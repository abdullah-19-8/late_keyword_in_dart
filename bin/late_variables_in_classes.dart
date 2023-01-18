void main(List<String> args) {
  // we can use the 'late' keyword with classes too
  // when we create an instance of the class, it will be initialized
  // and the result will be stored in the variable
  late Person person = Person();

  print(person.name); // we called name, the constructor was called too,
  // but the description was not calculated yet, because we didn't use it
  print(person
      .description); // we called description, but the constructor was not called again
}

class Person {
  late String description = heavyCalculationOfDescription();
  final String name;
  Person({this.name = "John"}) {
    print('this is inside the constructor');
  }

  String heavyCalculationOfDescription() {
    print('this is inside the "heavyCalculationOfDescription" function');
    return "hello world";
  }
}
