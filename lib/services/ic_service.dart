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

  Uint8List getAccountIdFromPrincipal(String principal) {

    final hash = SHA224();
    hash.update(('\x0Aaccount-id').plainToU8a());
    hash.update(Principal.fromText(principal).toBlob());
    hash.update(Uint8List(32));
    final data = hash.digest();
    final view = ByteData(4);
    view.setUint32(0, getCrc32(data.buffer));
    final checksum = view.buffer.asUint8List();
    final bytes = Uint8List.fromList(data);
    return Uint8List.fromList([...checksum, ...bytes]);
  }

}