import 'TextGenerator.dart';

class TextGeneratorSpanish implements TextGenerator{
  @override
  String QREntry(bool long) {
    return long ? 'Entrada QR' : 'QR';
  }

  @override
  String code() {
    return 'Codigo evento';
  }

  @override
  String configuration() {
    return 'Configuración';
  }

  @override
  String deafultEntryText() {
    return 'Entrada favorita';
  }

  @override
  String dorsalEntry(bool long) {
    return long ? 'Entrada dorsal':'Dorsal';
  }

  @override
  String manualEntry(bool long) {
    return long ? 'Entrada manual': 'Manual';
  }

  @override
  String mode() {
    return 'Modo';
  }

  @override
  String name() {
    return 'Nombre';
  }

  @override
  String point() {
    return 'Punto';
  }

  @override
  String search() {
    return 'Buscar';
  }

  @override
  String stages() {
    return 'Etapas';
  }

}