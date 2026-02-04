class Result<T> {
  T output;
  Result(this.output);
}

void main(List<String> args) {
  Result<bool> success = Result(true);
  print(success.runtimeType);
  Result<String> message = Result("Operation completed successfully.");
  print(message.runtimeType);
}

// In this example, we define a generic class Result<T> that can hold a value of any type T.
// In the main function, we create instances of Result with different type parameters:
// one with a bool and another with a String.
// We then print the runtime type of each instance to demonstrate the use of generics.
