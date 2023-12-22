import 'package:flutter/material.dart';
import 'package:flutter_application_4/gradient_container.dart';

/*
!VARIABLES

everyhwere we are using variables. 

variables are data containers. 

var greetingText = "Hello World";

go gradient_container.dart

 */

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [Colors.deepPurple, Colors.blueAccent],
        ),
      ),
    ),
  );
}
