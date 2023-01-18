// Description: Avoiding common pitfall with late variables

void main(List<String> args) {
  final person = Person();

  try{
    // avoid to use try-catch block, it is just for demonstration, it is not a good practice
    // and against the best practices of dart guidelines.
    // instead, use nullable values.
    print(person.fullName); 
  } catch(e){
    print(e); // Exception: LateInitializationError: Field 'fullName' has not been initialized.
  }

  person.firstName = "John";
  person.lastName = "Doe";
  print(person.fullName); // John Doe
}

class Person {
  late final String firstName;
  late final String lastName;
  late String fullName = "$firstName $lastName";
}
