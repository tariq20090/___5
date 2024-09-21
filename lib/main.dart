// Question No 1 ("if / else condition")
import 'dart:io';
void main (){
Print("Enter your marks :");
int marks = int.parse(stdin.readLineSync()!);   
if (marks >= 90) {
  print("Grade A");
}else if (marks >= 80) {
  print("Grade B");
} else if(marks >= 70) {
  print("Grade C");
} else (){
  print ("Grade D");
}

}

//Question {"list"}
void main(){
// Create a List
  List<String> fruits = ["Apple", "Banana", "Cherry", "Date", "Elderberry"];

  // 1. add() - Add an element to the end of the List
  fruits.add("Fig");
  print("After add(): $fruits");

  // 2. insert() - Insert an element at a specific index
  fruits.insert(2, "Grape");
  print("After insert(): $fruits");

  // 3. remove() - Remove the first occurrence of an element
  fruits.remove("Banana");
  print("After remove(): $fruits");

  // 4. removeAt() - Remove an element at a specific index
  fruits.removeAt(1);
  print("After removeAt(): $fruits");

  // 5. sort() - Sort the List in ascending order
  fruits.sort();
  print("After sort(): $fruits");

  // 6. indexOf() - Find the index of the first occurrence of an element
  int index = fruits.indexOf("Elderberry");
  print("Index of Elderberry: $index");

  // 7. contains() - Check if the List contains an element
  bool containsFig = fruits.contains("Fig");
  print("Contains Fig: $containsFig");

  // 8. length - Get the number of elements in the List
  int length = fruits.length;
  print("Length: $length");

  // 9. clear() - Remove all elements from the List
  fruits.clear();
  print("After clear(): $fruits");
}

//Question no 3 {"Map"}
void main() {
  // Create a Map
  Map<dynamic, dynamic> studentAges = {
    "mubashir": 20,
    "muzzamil": 22,
    "tariq": 21,
    "anwer": 20,
  };

  // 1. add/put - Add or update an entry
  studentAges["khalid"] = 23;
  print("After add: $studentAges");

  // 2. remove - Remove an entry
  studentAges.remove("anwer");
  print("After remove: $studentAges");

  // 3. containsKey - Check if a key exists
  bool hasmubashir = studentAges.containsKey("mubashir");
  print("Contains mubashir: $hasmubashir");

  // 4. containsValue - Check if a value exists
  bool hasAge20 = studentAges.containsValue(20);
  print("Contains age 20: $hasAge20");

  // 5. keys - Get all keys
  print("Keys: ${studentAges.keys}");

  // 6. values - Get all values
  print("Values: ${studentAges.values}");

  // 7. forEach - Iterate over each entry
  studentAges.forEach((key, value) {
    print("$key: $value");
  });

  // 8. length - Get the number of entries
  int length = studentAges.length;
  print("Length: $length");

  // 9. clear - Remove all entries
  studentAges.clear();
  print("After clear: $studentAges");

  // 10. isEmpty - Check if the Map is empty
  bool isEmpty = studentAges.isEmpty;
  print("Is empty: $isEmpty");
}

//Question no 4 {"loop"}
 // multiplication of 5
void main() {
  print("Multiplication Table of 5:");
  for (int i = 1; i <= 10; i++) {
    print("5 x $i = ${5 * i}");
  }
} //{this is for loop}

//{2}
void main() {
  printTable(5);
  printTable(6);
  printTable(7);
  printTable(8);
}

printTable(table) {
  print("Multiplication Table of $table:");
  for (var i = 1; i <= 10; i++) {
    print("$table x $i = ${i * table}");
  }
  print("\n");
}
//{while loop}
void main() {
  int i = 0;
  while (i < 5) {
    print(i);
    i++;
  }
}

//e.g 2 
void main() {
  int i = 100;
  while (i >= 1) {
    print(i);
    i--;
  }
}
//{do while loop}
void main() {
  int i = 0;
  do {
    print(i);
    i++;
  } while (i < 5);
}
//Question 5 {data type}

void main() {
  print("Data Type Identifier");
  print("---------------------");

  // Test values
  var values = [
    10,
    3.14,
    "Hello",
    true,
    [1, 2, 3],
    {"name": "John", "age": 30},
    {1, 2, 3},
    null,
  ];

  for (var value in values) {
    print("Value: $value");
    print("Data Type: ${getDataTypes(value)}");
    print("---------------------");
  }
}

String getDataTypes(var value) {
  if (value is int) {
    return "int";
  } else if (value is double) {
    return "double";
  } else if (value is String) {
    return "String";
  } else if (value is bool) {
    return "bool";
  } else if (value is List) {
    return "List";
  } else if (value is Map) {
    return "Map";
  } else if (value is Set) {
    return "Set";
  } else if (value == null) {
    return "null";
  } else {
    return "Unknown";
  }
}

