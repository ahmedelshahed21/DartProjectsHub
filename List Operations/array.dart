import 'dart:io';
import 'dart:math';

List<int> createList(List<int> myList, {String? listName}) {
  int num = 0;
  stdout.write(
      "\nWhat is the number of elements in ${listName ?? 'Your List ? '}");
  num = int.parse(stdin.readLineSync()!);

  while (num <= 0) {
    stdout.write(
        "Wrong! The number of elements must be a positive number.\nEnter the number of elements: ");
    num = int.parse(stdin.readLineSync()!);
  }

  if (num != 0) {
    stdout.write("\nWhat are the elements of The List ? \n\n");
    for (int i = 0; i < num; i++) {
      myList.add(int.parse(stdin.readLineSync()!));
    }
  }

  return myList;
}

void swapLists(List<int> myList, List<int> myList2) {
  List<int> temp = List.from(myList);
  myList.clear();
  myList.addAll(myList2);
  myList2.clear();
  myList2.addAll(temp);
}

void insertElement(List<int> myList) {
  List<int> myListBefore = List.from(myList);
  stdout.write("\nWhat is the index of the element you want to insert ? ");
  var position = int.parse(stdin.readLineSync()!);
  if (position > myList.length) {
    stdout.write("Out of Range");
  } else {
    stdout.write("What is the element you want to insert ? ");
    var elementToInsert = int.parse(stdin.readLineSync()!);
    myList.insert(position, elementToInsert);

    stdout.write("\n\nList before insertion : ");
    printList(myListBefore);
    stdout.write("List after insertion  : ");
    printList(myList);
  }
}

void deleteElement(List<int> myList) {
  List<int> myListBefore = List.from(myList);
  stdout.write("\nWhat is the index of the element you want to delete ? ");
  int? ind = int.parse(stdin.readLineSync()!);
  if (ind < myList.length) {
    myList.removeAt(ind);
    stdout.write("\n\nList before deletion : ");
    printList(myListBefore);
    stdout.write("List after deletion  : ");
    printList(myList);
  } else {
    stdout.write("Not found !\n");
  }
}

void countOccurrencesOfElements(List<int> myList) {
  List<int> countedElements = [];
  for (int i = 0; i < myList.length; i++) {
    int counter = 0;
    if (!countedElements.contains(myList[i])) {
      for (int j = 0; j < myList.length; j++) {
        if (myList[i] == myList[j]) {
          counter++;
        }
      }
      stdout.write("\n\t${myList[i]}\t\t:\t $counter times");
      countedElements.add(myList[i]);
    }
  }
  stdout.write("\n");
}

List<int> fillingListWithRandomValues() {
  stdout.write("\nNumber Of List Elements : ");
  int length = int.parse(stdin.readLineSync()!);
  stdout.write("Range Start With        : ");
  int min = int.parse(stdin.readLineSync()!);
  stdout.write("Range End With          : ");
  int max = int.parse(stdin.readLineSync()!);
  Random rand = Random();
  List<int> randomList = [];

  for (int i = 0; i < length; i++) {
    int randomNumber = min + rand.nextInt(max - min + 1);
    randomList.add(randomNumber);
  }
  return randomList;
}

void listSlicing(List<int> myList) {
  List<int> evenList = [];
  List<int> oddList = [];

  for (int i = 0; i < myList.length; i++) {
    if (myList[i] % 2 == 0) {
      evenList.add(myList[i]);
    } else {
      oddList.add(myList[i]);
    }
  }
  stdout.write("\nOriginal List : ");
  printList(myList);
  stdout.write("Even List     : ");
  printList(evenList);
  stdout.write("Odd List      : ");
  printList(oddList);
}

List<int> listConcatenation(List<int> myList, List<int> myList2) {
  List<int> concatenatedList = [];

  for (int i = 0; i < myList.length; i++) {
    concatenatedList.add(myList[i]);
  }
  for (int i = 0; i < myList2.length; i++) {
    concatenatedList.add(myList2[i]);
  }
  return concatenatedList;
}

void copyingList(List<int> myList) {
  List<int> copiedArray = List.from(myList);
  stdout.write("\nOriginal List : $myList\n");
  stdout.write("Copied List   : $copiedArray\n");
}

List<int> copyingInvertedList(List<int> myList) {
  List<int> invertedList = [];
  for (int i = myList.length - 1; i >= 0; i--) {
    invertedList.add(myList[i]);
  }
  return invertedList;
}

void printList(List<int> myList) {
  if (myList.isNotEmpty) {
    stdout.write(myList);
    stdout.write("\n");
  }
  if (myList.isEmpty) {
    stdout.write("Empty List!\n");
  }
}
