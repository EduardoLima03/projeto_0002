import 'package:flutter/material.dart';
import 'package:projeto_0002/controllers/home_controllers.dart';

class CompactHomePage extends StatefulWidget {
  const CompactHomePage({super.key});

  @override
  State<CompactHomePage> createState() => _CompactHomePageState();
}

class _CompactHomePageState extends State<CompactHomePage> {
  final HomeControllers _controllers = HomeControllers();
  final GlobalKey<FormState> _key = GlobalKey();
  final TextEditingController _depositControler = TextEditingController();
  final TextEditingController _streetsControler = TextEditingController();
  final TextEditingController _buildingsControler = TextEditingController();
  final TextEditingController _storeyControler = TextEditingController();
  final TextEditingController _flatsControler = TextEditingController();

  @override
  void dispose() {
    _streetsControler.dispose();
    _buildingsControler.dispose();
    _storeyControler.dispose();
    _flatsControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
      child: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              controller: _depositControler,
              decoration: const InputDecoration(
                labelText: 'Deposito',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: _streetsControler,
              decoration: const InputDecoration(
                labelText: 'Ruas',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: _buildingsControler,
              decoration: const InputDecoration(labelText: 'Predios'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: _storeyControler,
              decoration: const InputDecoration(labelText: 'Andares'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: _flatsControler,
              decoration: const InputDecoration(labelText: 'Apartamentos'),
              validator: (value) {
                if (value == null) {
                  return 'Digite valores numericos';
                }
                return '';
              },
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.height,
              child: ElevatedButton(
                onPressed: () {
                  _key.currentState?.validate();
                },
                child: const Text(
                  'Gerar',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
