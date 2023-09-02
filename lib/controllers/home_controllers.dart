import 'package:barcode_widget/barcode_widget.dart';

class HomeControllers {
  HomeControllers();

  /// Retorna uma lista de com Qrcode.
  List<BarcodeWidget> gerarQrcodes(
      {required int quantidadeDeposito,
      required int quantidadeRua,
      required int quantidadeBloco,
      required int quantidadeNivel,
      required int quantidadeApartamento}) {
    /**
     * Cada apartamento terar um Qrcode.
     * Cada nivel terar os apartamentos(o nivel tem o numero de aper 
     * informado), exp: 2 apartamento por nivel, nivel 1 -> ap 01 e ap 02,
     * nivel -> ap 01 e ap 02.
     * O bloco tem os niveis, exp: bloco 01 -> nivel 1, nivel 2 e nivel 3.
     * A rua tera os blocos, rua -> bloco 01, bloco 02, bloco 03 ....
     * 
     */
    List<BarcodeWidget> qrcodes = [];

    for (var d = 1; d <= quantidadeDeposito; d++) {
      for (var i = 1; i <= quantidadeRua; i++) {
        for (var j = 1; j <= quantidadeBloco; j++) {
          for (var n = 1; n <= quantidadeNivel; n++) {
            for (var a = 1; a <= quantidadeApartamento; a++) {
              /*BarcodeWidget(
              barcode: Barcode.qrCode(),
              data: '{"rua": $i, "bloco": $j, "nivel": $n, "apartamento": $a}',
              );*/
              qrcodes.add(BarcodeWidget(
                barcode: Barcode.qrCode(),
                width: 200,
                height: 200,
                data:
                    '{"deposito" : $d,"rua": $i, "bloco": $j, "nivel": $n, "apartamento": $a}',
              ));
            }
          }
        }
      }
    }

    return qrcodes;
  }

  geraEtiqueta() {}
}
