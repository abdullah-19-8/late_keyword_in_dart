// when we want to use a variable, we can use the 'late' keyword
// to tell the compiler that we will initialize the variable later, it is not null
// and we don't want to initialize it now
// this is called 'lazy initialization'

late String name; // this is a lazy initialization

// if we didn't use the 'late' keyword, we would get an error

void main(List<String> args) {
  // if we try to print the variable, we get an exception
  try{ // we use a try-catch block to catch the exception, and print it, instead of crashing the program
  // if you don't know what try-catch is, you can avoid it for now.
    print(name); // Exception: LateInitializationError: Field 'name' has not been initialized.
  } catch(e){
    print(e);
  }
  name = "John"; // we initialize the variable
  print(name); // we print the variable
}
