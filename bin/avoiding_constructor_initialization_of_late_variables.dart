// late instance variables should not be initialized in the constructor
// otherwise they wont be late anymore

void main(List<String> args) {
  final johnDoe = Person(name: 'John Doe');
  final janeDoe = Person(name: 'Jane Doe');
  final family = WrongImplementationOfFamily(
    members: [
      johnDoe,
      janeDoe,
    ],
  ); // prints 'Initializing wrong number of members'

  print(family);
  print(family.numberOfMembers); // this function was called in the constructor before we use it

  final johnSmith = Person(name: 'John Smith');
  final janeSmith = Person(name: 'Jane Smith');
  final family2 = CorrectImplementationOfFamily(
    members: [
      johnSmith,
      janeSmith,
    ],
  ); // it will not prints 'Initializing correct number of members' because it is not called the function in the constructor

  print(family2);
  print(family2.numberOfMembers); // this function now is called when we use it
}

class Person {
  final String name;

  Person({required this.name});
}

class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int numberOfMembers;

  WrongImplementationOfFamily({required this.members}) {
    numberOfMembers = initializeNumberOfMembers();
  }

  int initializeNumberOfMembers() {
    print('Initializing wrong number of members');
    return members.length;
  }
}

class CorrectImplementationOfFamily {
  final Iterable<Person> members;
  late final int numberOfMembers = initializeNumberOfMembers();

  CorrectImplementationOfFamily({required this.members});

  int initializeNumberOfMembers() {
    print('Initializing correct number of members');
    return members.length;
  }
}
