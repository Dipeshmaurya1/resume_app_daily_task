
# What is  List & Map ?
- A List is an ordered collection of objects, where each object can occur multiple times.
- A Map is a collection of key-value pairs where each key is unique. In Dart, maps are represented by the Map class.

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
