import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section 1 (Center, Elevated Button dan Text)
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Tap me"),
            ),
          ),

          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(.3),
                  Colors.blue,
                ],
              ),
            ),
          )

          // Section 2 (Standalone Widget)

          // Section 3 (Single Child Widget)

          // Section 4 (Multiple Children Widget)

          // Section 5 (Layout - Row dan Column)
        ],
      ),
    );
  }
}
