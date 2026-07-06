import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(),
    ),
  );
}

final ValueNotifier<int> counter = ValueNotifier(0);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print("🏠 HomePage build called");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless Test"),
      ),
      body: Center(
        child: ValueListenableBuilder<int>(
          valueListenable: counter,
          builder: (context, value, child) {
            print("🔄 Counter Widget rebuild");

            return Text(
              "Count: $value",
              style: const TextStyle(fontSize: 24),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}