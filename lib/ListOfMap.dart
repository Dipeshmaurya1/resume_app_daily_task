import 'dart:io';

void main()
{
  Map UserInfo={
    'First Name': 'Raj',
    'Last Name': 'Malhotra',
    'Age': 25,
    'Address': 'P.N 30, Ramdev Bunglows',
    'City': 'Surat',
    'State': 'Gujarat',
    'Qualification': 'Cyber Security',
    'Contact':'9898548547',
    'E-mail':'malhotraraj007@gmail.com',
    'Gender': 'Male'
  };
  stdout.write('Enter Your First Name:');
  UserInfo.update('First Name', (value) => stdin.readLineSync()!);
  stdout.write('Enter Your Last Name:');
  UserInfo.update('Last Name', (value) => stdin.readLineSync()!);
  stdout.write('Enter Your Age:');
  UserInfo.update('Age', (value) => stdin.readLineSync()!);
  stdout.write('Enter Your Address:');
  UserInfo.update('Address', (value) => stdin.readLineSync()!);
  stdout.write('Enter Your City:');
  UserInfo.update('City', (value) => stdin.readLineSync()!);
  stdout.write('Enter Your State:');
  UserInfo.update('State', (value) => stdin.readLineSync()!);
  stdout.write('Enter Your Qualification:');
  UserInfo.update('Qualification', (value) => stdin.readLineSync()!);
  stdout.write('Enter Your Contact:');
  UserInfo.update('Contact', (value) => stdin.readLineSync()!);
  stdout.write('Enter Your E-mail:');
  UserInfo.update('E-mail', (value) => stdin.readLineSync()!);
  stdout.write('Enter Your Gender:');
  UserInfo.update('Gender', (value) => stdin.readLineSync()!);

  print(UserInfo);
}