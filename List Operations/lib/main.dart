import 'dart:io';

import '../array.dart';

void main() {
  List<int> myList = [];
  String q = " ";
  String ch = " ";
  String randomOrByUser = "";

  stdout.write("\n\n");
  stdout.write("( 1 ) To Enter List's Elements Manually\n");
  stdout.write("( 2 ) To Generate Random Values For List's Elements\n");
  stdout.write("Choose ( 1 or 2  ) : ");

  randomOrByUser = stdin.readLineSync()!;
  if (randomOrByUser != "1" && randomOrByUser != "2") {
    do {
      stdout.write("Invalid Option ! you must choose : ( 1 or 2 ) only \n\n");
      stdout.write("Choose ( 1 or 2  ) : ");
      randomOrByUser = stdin.readLineSync()!;
    } while (randomOrByUser != "1" && randomOrByUser != "2");
  }

  switch (randomOrByUser) {
    case "1":
      {
        createList(myList);
      }
    case "2":
      {
        myList = fillingListWithRandomValues();
        stdout.write("\nGenerated List : ");
        printList(myList);
      }
  }

  do {
    stdout.write("\n\t\t\t\t  Operations \t\t\t\t\t\n");
    stdout.write("\t\t\t-----------------------------\n");
    stdout.write("\t\t\t (1) Swap Lists\n");
    stdout.write("\t\t\t (2) Insert An Element\n");
    stdout.write("\t\t\t (3) Delete An Element\n");
    stdout.write("\t\t\t (4) Count Element's Occurrence\n");
    stdout.write("\t\t\t (5) List Slicing\n");
    stdout.write("\t\t\t (6) Concatenate Two Lists\n");
    stdout.write("\t\t\t (7) Copying List\n");
    stdout.write("\t\t\t (8) Copying Inverted List\n\n");

    stdout.write(
        "Choose the operation you want to do ( 1 or 2 or 3 or 4 or 5 or 6 or 7 or 8 ) : ");
    ch = stdin.readLineSync()!;
    if (ch != "1" &&
        ch != "2" &&
        ch != "3" &&
        ch != "4" &&
        ch != "5" &&
        ch != "6" &&
        ch != "7" &&
        ch != "8") {
      do {
        stdout.write(
            "Invalid Option ! you must choose : ( 1 or 2 or 3 or 4 or 5 or 6 or 7 or 8 ) only\n\n");
        stdout.write(
            "Choose the operation you want to do ( 1 or 2 or 3 or 4 or 5 or 6 or 7 or 8 ) : ");
        ch = stdin.readLineSync()!;
      } while (ch != "1" &&
          ch != "2" &&
          ch != "3" &&
          ch != "4" &&
          ch != "5" &&
          ch != "6" &&
          ch != "7" &&
          ch != "8");
    }

    switch (ch) {
      case "1":
        {
          List<int> myList2 = [];
          createList(myList2, listName: 'Your List 2 ? ');
          stdout.write("\n***** Before Swap *****\n");
          stdout.write("List 1 : ");
          printList(myList);
          stdout.write("List 2 : ");
          printList(myList2);
          swapLists(myList, myList2);
          stdout.write("***** After Swap *****\n");
          stdout.write("List 1 : ");
          printList(myList);
          stdout.write("List 2 : ");
          printList(myList2);
        }
        break;

      case "2":
        {
          insertElement(myList);
        }
        break;
      case "3":
        {
          deleteElement(myList);
        }
        break;
      case "4":
        {
          countOccurrencesOfElements(myList);
        }
        break;
      case "5":
        {
          listSlicing(myList);
        }
      case "6":
        {
          List<int> myList2 = [];
          createList(myList2, listName: 'your List 2 ? ');
          stdout.write('\nList 1                : ');
          stdout.write("$myList\n");
          stdout.write('List 2                : ');
          stdout.write("$myList2\n");
          myList = listConcatenation(myList, myList2);
          stdout.write('List 1 + List 2       : ');
          stdout.write("$myList\n");
        }
      case "7":
        {
          copyingList(myList);
        }
      case "8":
        {
          stdout.write("\nOriginal List   : $myList\n");
          myList = List.from(copyingInvertedList(myList));
          stdout.write("Inverted List   : $myList\n");
          copyingInvertedList(myList);
        }
      default:
        {
          stdout.write("Invalid Option");
        }
    }
    stdout.write("\n\nDo you still want another operation ? ( Yes or No )\n");
    q = stdin.readLineSync()!.toLowerCase();
  } while (q == "yes");
  if (q == "no") {
    stdout.write("\nGood bye\n");
  }
}
