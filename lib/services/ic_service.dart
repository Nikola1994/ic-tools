import 'dart:typed_data';

import 'package:agent_dart/principal/principal.dart';
import 'package:agent_dart/utils/extension.dart';

class ICService {

  String getTokenID(String principalCanister, int mintNumberOfNFT) {
    Uint8List padding = ("\x0Atid").plainToU8a();

    Uint8List uList = Uint8List.fromList([
      ...padding,
      ...Principal.fromText(principalCanister).toUint8Array(),
      ...mintNumberOfNFT.toU8a(bitLength: 32)]);

   return Principal.fromUint8Array(uList).toText();
  }

}