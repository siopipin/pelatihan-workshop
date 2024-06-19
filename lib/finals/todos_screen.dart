import 'package:flutter/material.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({super.key});

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  // section 2: local variabel
  TextEditingController ctrlAddTodo = TextEditingController();

  List listTodo = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos Putri"),
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
                Row(
                  children: [
                    Icon(Icons.list_alt_sharp),
                    Text("Todo"),
                    SizedBox(width: 16),
                  ],
                ),
                Expanded(
                  child: TextField(
                    controller: ctrlAddTodo,
                    decoration: InputDecoration(
                      label: Text("add todo"),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        listTodo.add(ctrlAddTodo.text);
                      });
                      ctrlAddTodo.clear();
                    },
                    child: Text("Add"))
              ],
            ),
          ),

          SizedBox(height: 16),

          //listview
          Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  itemCount: listTodo.length,
                  itemBuilder: (_, index) {
                    return Card(
                      child: ListTile(
                        trailing: Icon(Icons.task_alt_sharp),
                        title: Text(listTodo[index]),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
