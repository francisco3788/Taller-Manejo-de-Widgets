import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practica de Widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MenuScreen(),
    );
  }
}

//MENU PRINCIPAL
class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, 
        title: const Text("Menu"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ExampleLayout()),
                );
              },
              child: const Text("Example layout"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ExampleCounter()),
                );
              },
              child: const Text("Example counter"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ExampleList()),
                );
              },
              child: const Text("List dynamic"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ExampleCard()),
                );
              },
              child: const Text("card"),
            ),
          ],
        ),
      ),
    );
  }
}

//PANTALLA 1
class ExampleLayout extends StatelessWidget {
  const ExampleLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, 
        title: const Text("Example layout"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 80, height: 80, color: Colors.red),
              const SizedBox(width: 20),
              Container(width: 80, height: 80, color: Colors.blue),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.green,
            child: const Text("Texto superpuesto"),
          ),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text("Element 1"),
          ),
          const ListTile(
            leading: Icon(Icons.search),
            title: Text("Element 2"),
          ),
        ],
      ),
    );
  }
}

//PANTALLA 2
class ExampleCounter extends StatefulWidget {
  const ExampleCounter({super.key});

  @override
  State<ExampleCounter> createState() => _ExampleCounterState();
}

class _ExampleCounterState extends State<ExampleCounter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, 
        title: const Text("Example Counter"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Contador: $counter", style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: const Text("Aumentar"),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (counter > 0) counter--; 
                    });
                  },
                  child: const Text("Disminuir"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//PANTALLA 3
class ExampleList extends StatefulWidget {
  const ExampleList({super.key});

  @override
  State<ExampleList> createState() => _ExampleListState();
}

class _ExampleListState extends State<ExampleList> {
  List<String> items = ["Elemento 1", "Elemento 2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, 
        title: const Text("Example List"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: items
            .map((e) => ListTile(
                  leading: const Icon(Icons.list),
                  title: Text(e),
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            items.add("Elemento ${items.length + 1}"); 
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

//PANTALLA card
class ExampleCard extends StatelessWidget {
  const ExampleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, 
        title: const Text("Card"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.star, size: 50, color: Colors.amber),
                SizedBox(height: 10),
                Text("Estrellita"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
