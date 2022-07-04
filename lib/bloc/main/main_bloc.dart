import 'dart:typed_data';

import 'package:agent_dart/utils/extension.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:ic_tools/services/all_services.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {

  final BuildContext context;
  final TextEditingController _principalController = TextEditingController();
  final TextEditingController _accountIDController = TextEditingController();

  MainBloc(this.context) : super(InitialMainState()) {
    on<CalculateAccountIdMainEvent>((event, emit) {
      Uint8List accountId = AllServices().icService.getAccountIdFromPrincipal(_principalController.text);
      String accountIdString = accountId.toHex();

      accountIDController.text = accountIdString;
      emit(InitialMainState());
    });
    on<CopyToClipboardAccountIdMainEvent>((event, emit) {
      Clipboard.setData(ClipboardData(text: _accountIDController.text));
    });
  }

  TextEditingController get principalController => _principalController;
  TextEditingController get accountIDController => _accountIDController;
}
