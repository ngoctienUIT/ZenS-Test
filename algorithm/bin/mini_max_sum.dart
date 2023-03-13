import 'dart:io';

void main() {
  print('Please enter an array with five elements:');
  final input = stdin.readLineSync();

  List<int>? listOfNumbers = input?.split(' ').map(int.parse).toList();
  listOfNumbers!.sort();
  int sum = listOfNumbers.reduce((a, b) => a + b);

  print("${sum - listOfNumbers[4]} ${sum - listOfNumbers[0]}");
}

void findEvenElements(List<int> list) {
  List<int> listEventNumbers =
      list.where((element) => element % 2 == 0).toList();
  print(listEventNumbers);
}

void findOddElements(List<int> list) {
  List<int> listOddNumbers = list.where((element) => element % 2 == 1).toList();
  print(listOddNumbers);
}
