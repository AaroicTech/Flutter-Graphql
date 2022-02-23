import 'package:flutter/material.dart';
import 'package:graphql_todo_app/Screens/add_todo.dart';

class TodoHomePage extends StatefulWidget {
  const TodoHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<TodoHomePage> createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('HomePage'),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: const Text('Available todo'),
                  ),
                  Expanded(
                    child: Container(
                      child: Center(
                        child: ListView(
                          children: List.generate(5, (index) {
                            return ListTile(
                              contentPadding: const EdgeInsets.all(0),
                              leading: const CircleAvatar(),
                              title: const Text('Todo Title'),
                              subtitle: const Text('Todo time'),
                              trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.delete),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 270),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => AddTodo(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: const Text('Add todo'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},

      // ),
    );
  }
}
