void main(List<String> args) {
  // we can use the 'late' keyword with functions too
  // when we call the function, it will be initialized
  // and the result will be stored in the variable
  print('before calling the function');
  late String name =
      getName(); // this function will be called when we use the variable, not now,
  //  if we remove the 'late' keyword, it will be called now
  print('after calling the function');
  print(name);
}

String getName() {
  print('this is inside the function');
  return "John";
}
