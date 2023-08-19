import 'package:flutter/material.dart';
import 'package:projeto_0002/components/home/compact_home_page.dart';

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
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return CompactHomePage();
        } else if ((constraints.maxWidth >= 600) &&
            (constraints.maxWidth < 840)) {
          return const Text("Medium");
        } else {
          return const Text("Desktop");
        }
      }),
    );
  }
}
