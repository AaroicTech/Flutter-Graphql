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
                    margin: const EdgeInsets.all(20),
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
                              title: const Text('Todo List'),
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
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => AddTodo(),
            ),
          );
        },
        child: const Text('todo'),
      ),
    );
  }
}
