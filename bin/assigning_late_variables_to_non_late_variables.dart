// let's see what happens when we try to assign a late variable to a non-late variable

void main(List<String> args) {
  print('before calling the function');
  late final String fullName = getFullName();
  final String resolvedFullName = fullName; // in here the function will be called
  print('after calling the function'); // this will be printed after the function is called
  print(resolvedFullName); // then in here fullName will be resolved
}

String getFullName() {
  return "Abdullah Ahmed";
}
