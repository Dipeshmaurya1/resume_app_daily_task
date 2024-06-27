
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
<h1 align = "center"> G-mail Drawer </h1>
<p>
  <img src='https://github.com/Dipeshmaurya1/resume_app_daily_task/assets/149373441/52636450-f28d-426a-837c-27757d336e44' height=35%, width=22%>
</p>
<p>
  <video src='https://github.com/Dipeshmaurya1/resume_app_daily_task/assets/149373441/35bd291b-4fac-4d56-ac22-3a882e073471' height=35%, width=22%>
</p>
<a  href="https://github.com/Dipeshmaurya1/resume_app_daily_task/blob/master/lib/Component/Home/Gmail_Drawer/GmailDrawer.dart">-> 📂 Go To Dart File 📂<-</a>

<h1 align = "center"> Login Pages </h1>
<p>
  <img src='https://github.com/Dipeshmaurya1/resume_app_daily_task/assets/149373441/7b23f51c-69de-40cf-928c-7357ff760f3b' height=35%, width=22%>
</p>
<p>
  <img src='https://github.com/Dipeshmaurya1/resume_app_daily_task/assets/149373441/724119f5-5f23-46ba-afb1-7b131274d4ef' height=35%, width=22%>
</p>
<p>
  <video src='https://github.com/Dipeshmaurya1/resume_app_daily_task/assets/149373441/885121c0-d6a9-4d4d-8616-e2ec2845bb0f' height=35%, width=22%>
</p>
<a  href="https://github.com/Dipeshmaurya1/resume_app_daily_task/tree/master/lib/Component/Home/LoginPages">-> 📂 Go To Dart File 📂<-</a>

<h1 align = "center"> Gmail and Password with Validation </h1>
  <img src='https://github.com/Dipeshmaurya1/resume_app_daily_task/assets/149373441/5234723c-be11-42bb-9552-c44c9e91b458' height=35%, width=22%>
  <img src='https://github.com/Dipeshmaurya1/resume_app_daily_task/assets/149373441/97bb8ff0-e98b-4d04-beb0-9e3a23d83a45' height=35%, width=22%>
  <img src='https://github.com/Dipeshmaurya1/resume_app_daily_task/assets/149373441/bcf14518-f31c-4314-986b-a57cc7cae2fc' height=35%, width=22%>
  <img src='https://github.com/Dipeshmaurya1/resume_app_daily_task/assets/149373441/8226e1cb-9f0b-4d78-9ce8-16dec4202a16' height=35%, width=22%>
  
  <a  href="https://github.com/Dipeshmaurya1/resume_app_daily_task/tree/master/lib/Component/Home/GmailLoginPage_withValidat">-> 📂 Go To Dart File 📂<-</a>

<h1 align = "center"> Image Picker </h1>
<p>
  <video src='https://github.com/Dipeshmaurya1/resume_app_daily_task/assets/149373441/b4ed19ec-e261-42dc-be33-c3c07ad191c5' height=35%, width=22%>
</p>
<a  href="https://github.com/Dipeshmaurya1/resume_app_daily_task/tree/master/lib/Component/Home/ImagePicker">-> 📂 Go To Dart File 📂<-</a>

<h1 align = "center"> Invoice Generator  </h1>
<p>
  <img src='https://github.com/Dipeshmaurya1/resume_app_daily_task/assets/149373441/7048162b-c0ae-4773-8037-3591e482985d' height=35%, width=22%>
</p>
<p>
  <img src='https://github.com/Dipeshmaurya1/resume_app_daily_task/assets/149373441/43eeda60-b9d6-4084-abb4-8e26e3831f9b' height=35%, width=22%>
</p>
<a  href="https://github.com/Dipeshmaurya1/resume_app_daily_task/tree/master/lib/Component/Generate_pdf">-> 📂 Go To Dart File 📂<-</a>




















