// Asynchrony

// Synchronous Programming:

// Imagine you're waiting in line at a coffee shop. In a synchronous world, you would stand in line, and the barista would
//make your coffee while you wait. You can't do anything else until your coffee is ready.

// Asynchronous Programming:

// Now, think of asynchronous programming like placing an order at the coffee shop and being told you can go do other things
//while your order is being prepared. You're not stuck waiting in line; you're free to do other tasks.

// Asynchronous programming model allows developers to write concurrent and non-blocking code.

/*
Key Concepts:

Tasks that Take Time:
In programming, some tasks take time, like fetching data from the internet, reading a file, or waiting for user input. 
In synchronous programming, your program would be stuck waiting for these tasks to finish.

Non-Blocking Code:
Asynchronous programming allows you to write code that doesn't block or wait for these time-consuming tasks. 
Instead, it lets your program move on to do other things while waiting for these tasks to complete.

Futures:
A Future is like a promise that says, "I will give you a result or an error in the future." 
You can continue doing other things while waiting for the result.

async and await:
The async keyword is used to define functions that can perform asynchronous operations. The await keyword is used inside such 
functions to wait for a Future to complete without blocking the rest of the program.
 */

// Import statements
// The dart: scheme is used to import core libraries that are bundled with the Dart SDK.
// The package: scheme is used to import libraries that are external to the Dart SDK, commonly referred to as "packages."
// The package: scheme is typically used for dependencies listed in the pubspec.yaml file, which is the package configuration file for Dart projects.

import 'dart:io';
import 'dart:async';
import 'package:http/http.dart';

void main() {
  // Future<dynamic> changeNowGetListAllAvailablePairs() async {
  //   // Add your function code here!
  //   var request = http.Request(
  //       'GET',
  //       Uri.parse(
  //           'https://api.changenow.io/v1/market-info/available-pairs/?includePartners=false'));

  //   http.StreamedResponse response = await request.send();

  //   if (response.statusCode == 200) {
  //     return await response.stream.bytesToString();
  //   } else {
  //     return response.reasonPhrase;
  //   }
  // }
}
