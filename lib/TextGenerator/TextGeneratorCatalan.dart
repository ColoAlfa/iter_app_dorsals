import 'TextGenerator.dart';

class TextGeneratorCatalan implements TextGenerator {
  @override
  String QREntry(bool long) {
    return long ? 'Entrada QR' : 'QR';
  }

  @override
  String code() {
    return 'Codi esdeveniment';
  }

  @override
  String configuration() {
    return 'Configuració';
  }

  @override
  String deafultEntryText() {
    return 'Entrada favorita';
  }

  @override
  String dorsalEntry(bool long) {
    return long ? 'Entrada dorsal' : 'Dorsal';
  }

  @override
  String manualEntry(bool long) {
    return long ? 'Entrada manual' : 'Manual';
  }

  @override
  String mode() {
    return 'Mode';
  }

  @override
  String name() {
    return 'Nom';
  }

  @override
  String point() {
    return 'Punt';
  }

  @override
  String search() {
    return 'Buscar';
  }

  @override
  String stages() {
    return 'Etapes';
  }
}
