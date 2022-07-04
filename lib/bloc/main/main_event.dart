part of 'main_bloc.dart';

@immutable
abstract class MainEvent {}

class LoadingMainEvent extends MainEvent {}

class CalculateAccountIdMainEvent extends MainEvent {}

class CopyToClipboardAccountIdMainEvent extends MainEvent {}

