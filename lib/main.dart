import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var list = gerarQrcodes(
        quantidade_rua: 3,
        quantidade_bloco: 2,
        quantidade_nivel: 1,
        quantidade_apartamento: 2);

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              const Text("Barcodes"),
              const SizedBox(
                height: 10.0,
              ),
              ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: list[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  List gerarQrcodes(
      {required int quantidade_rua,
      required int quantidade_bloco,
      required int quantidade_nivel,
      required int quantidade_apartamento}) {
    /**
         * Cada apartamento terar um Qrcode.
         * Cada nivel terar os apartamentos(o nivel tem o numero de aper 
         * informado), exp: 2 apartamento por nivel, nivel 1 -> ap 01 e ap 02,
         * nivel -> ap 01 e ap 02.
         * O bloco tem os niveis, exp: bloco 01 -> nivel 1, nivel 2 e nivel 3.
         * A rua tera os blocos, rua -> bloco 01, bloco 02, bloco 03 ....
         * 
         */

    var qrcodes = [];

    for (var i = 1; i <= quantidade_rua; i++) {
      for (var j = 1; j <= quantidade_bloco; j++) {
        for (var n = 1; n <= quantidade_nivel; n++) {
          for (var a = 1; a <= quantidade_apartamento; a++) {
            /*BarcodeWidget(
              barcode: Barcode.qrCode(),
              data: '{"rua": $i, "bloco": $j, "nivel": $n, "apartamento": $a}',
            );*/
            qrcodes.add(BarcodeWidget(
              barcode: Barcode.qrCode(),
              width: 200,
              height: 200,
              data: '{"rua": $i, "bloco": $j, "nivel": $n, "apartamento": $a}',
            ));
          }
        }
      }
    }
    return qrcodes;
  }
}
