
# What is  List & Map ?
<h3> List </h3>
- A List is an ordered collection of objects, where each object can occur multiple times.
<h2> Example </h2>

```Dart
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> doubledNumbers = numbers.map((int number) {
    return number * 2;
  }).toList();

  print(doubledNumbers); // Output: [2, 4, 6, 8, 10]
}

```
<h3> Map </h3>
- A Map is a collection of key-value pairs where each key is unique. In Dart, maps are represented by the Map class.
<h2> Example </h2>

```Dart
Map Info= {
'key': value,
}
```


# Generics

- Similar to Java, Dart also supports generics. You can specify the type of elements that a List can hold.

# Predefined methods

- `add(E element)`: Adds an element to the end of the List.
- `remove(Object element)`: Removes the first occurrence of the specified element from the List.
- `elementAt(int index)`: Retrieves the element at the specified index.
- `length`: Returns the number of elements in the List.

# Example

```Dart
void main() {
  List<int> numbers = [1, 2, 3];
  numbers.add(4);
  numbers.remove(2);
  print(numbers.elementAt(1)); // Output: 3
  print(numbers.length); // Output: 3
}

```

<h1 align="center"> Status Bar & Device Orientation </h1>

# Status Bar in AppBar
```Dart
appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.red,
        ),
      ),
```

# Status Bar in Global Declaration
```Dart
 SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.red,

      )
    );
```

#  Device Orientation
```Dart
SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
```
<h2> G-mail Drawer </h2>
<p>
  <img src='https://github.com/Dipeshmaurya1/resume_app_daily_task/assets/149373441/52636450-f28d-426a-837c-27757d336e44' height=35%, width=22%>
</p>
<p>
  <video src='https://github.com/Dipeshmaurya1/resume_app_daily_task/assets/149373441/35bd291b-4fac-4d56-ac22-3a882e073471' height=35%, width=22%>
</p>




















