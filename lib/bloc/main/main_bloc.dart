import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:ic_tools/resources/loading/loading_dialog.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {

  final BuildContext context;

  MainBloc(this.context) : super(InitialMainState()) {
    on<LoadingMainEvent>((event, emit) {
      LoadingDialog.show(context);
    });
  }

}
