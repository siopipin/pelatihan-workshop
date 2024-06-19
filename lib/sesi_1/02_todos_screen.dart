import 'package:flutter/material.dart';

class TestTodoScreen extends StatefulWidget {
  const TestTodoScreen({super.key});

  @override
  State<TestTodoScreen> createState() => _TestTodoScreenState();
}

class _TestTodoScreenState extends State<TestTodoScreen> {
  // section 2: local variabel

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // section 1 : title screen

          ),
      body: Column(
        children: [
          //post todos
          Container(
            margin: EdgeInsets.only(top: 16),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // section 3: row icon dan text

                // section 4: Expanded untuk textField

                // section 5: ElevatedButton Add
              ],
            ),
          ),
          // section 6: Listview todos
        ],
      ),
    );
  }
}
