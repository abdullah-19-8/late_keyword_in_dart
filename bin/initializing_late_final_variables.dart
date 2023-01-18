// late final variables can only be initialized once
// if we try to initialize it again, we get an exception, and the program crashes

void main(List<String> args) {
  late final bool isTeenager;
  const age = 13;
  if (age >= 13 && age <= 19) {
    isTeenager = true;
  } else if (age < 13 || age > 19) {
    isTeenager = false;
  }

  try {
    isTeenager = false;
    print(isTeenager);
  } catch (e) {
    print(
        e); // Exception: LateInitializationError: Field 'isTeenager' has already been initialized.
  }
}
