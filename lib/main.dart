import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: BarcodeWidget(
            barcode: Barcode.qrCode(),
            data: '{"rua": 1, "bloco": 1}',
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
