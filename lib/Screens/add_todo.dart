import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({Key? key}) : super(key: key);

  @override
  _AddTodoState createState() => _AddTodoState();
}

final _task = TextEditingController();

class _AddTodoState extends State<AddTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: const Text('Add your first todo'),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  //color: Colors.red,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  controller: _task,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Todo Task',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text('save Task'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
