import 'dart:convert';
import 'dart:typed_data';

import 'package:pointycastle/export.dart';

class AESEncryptor {
  static Uint8List encrypt({
    required String plaintext,
    required String key,
    Uint8List? iv,
  }){

    final keyBytes = Uint8List.fromList(utf8.encode(key.padRight(32,'0').substring(0,32)));
    final aesEngine = AESEngine()
      ..init(true, KeyParameter(keyBytes));

    return aesEngine.process(Uint8List.fromList(utf8.encode(plaintext))); 
  }
}