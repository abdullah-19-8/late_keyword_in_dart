// late variables can be dependencies of other late variables
// this is useful when we have a lot of variables that depend on each other

void main(List<String> args) {
  late Person person = Person();
  print(person.fullName);
  // if we call the variable again, the function will not be called again
  // print(person.fullName);
  // print(person.fullName);

  // if we call the other variables, the function will not be called again
  print(person.firstName);
  print(person.lastName);
}

class Person {
  late String fullName = _getFullName();
  late String firstName = fullName
      .split(" ")
      .first; // if we remove the 'late' keyword, we get an error, because it is a dependency of another 'late' variable
  late String lastName = fullName
      .split(" ")
      .last; // if we remove the 'late' keyword, we get an error, because it is a dependency of another 'late' variable

  String _getFullName() {
    print('inside the function');
    return "Abdullah Ahmed";
  }
}
