void main(List<String> args) {
  // The main function doesn't receive the argument directly; it receives a list of strings. We need to take the first item from that list
  int num = int.parse(args[0]);

  if (num > 0) {
    print('$num is positive');
  } else if (num == 0) {
    print('$num is zero');
  } else {
    print('$num is negative');
  }
}
