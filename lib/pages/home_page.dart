import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gera etiqueta'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
        child: Form(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Ruas'),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Predios'),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Andares'),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Apartamentos'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
