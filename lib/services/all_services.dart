import 'package:ic_tools/services/ic_service.dart';

class AllServices {

  static final AllServices _instance = AllServices._internal();

  late ICService icService;

  factory AllServices() {
    return _instance;
  }

  AllServices._internal() {
    icService = ICService();
  }

}