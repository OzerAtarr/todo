// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class TexftfieldPage extends StatefulWidget {
  const TexftfieldPage({super.key});

  @override
  State<TexftfieldPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TexftfieldPage> {
  // text editing controller to get access to what the user typed
  TextEditingController myController = TextEditingController();

  //greeting message veriable
  String greetingMessage = "";

  // get user method
  void getUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = "Merhaba, " + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),

              // text field
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: myController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          100,
                        ),
                      ),
                      hintText: "İsminizi giriniz."),
                ),
              ),

              // button
              ElevatedButton(
                onPressed: getUser,
                child: Text('Tap'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
