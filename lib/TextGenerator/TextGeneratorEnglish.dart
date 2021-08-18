import 'TextGenerator.dart';

class TextGeneratorEnglish implements TextGenerator {
  @override
  String QREntry(bool long) {
    return long ? 'QR entry' : 'QR';
  }

  @override
  String code() {
    return 'Event code';
  }

  @override
  String configuration() {
    return 'Configuration';
  }

  @override
  String deafultEntryText() {
    return 'Favourite entry';
  }

  @override
  String dorsalEntry(bool long) {
    return long ? 'Dorsal entry' : 'Dorsal';
  }

  @override
  String manualEntry(bool long) {
    return long ? 'Manual entry' : 'Manual';
  }

  @override
  String mode() {
    return 'Mode';
  }

  @override
  String name() {
    return 'Name';
  }

  @override
  String point() {
    return 'Point';
  }

  @override
  String search() {
    return 'Search';
  }

  @override
  String stages() {
    return 'Stages';
  }
}
