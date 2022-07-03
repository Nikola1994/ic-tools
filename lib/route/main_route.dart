import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ic_tools/app_localisation.dart';
import 'package:ic_tools/bloc/main/main_bloc.dart';
import 'package:ic_tools/resources/core/internet_scaffold.dart';
import 'package:ic_tools/resources/values/colors.dart';

class MainRoute extends StatelessWidget {

  const MainRoute({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(context),
      child: _MainStatefulWidget(),
    );
  }

}

class _MainStatefulWidget extends StatefulWidget {
  _MainStatefulWidgetState createState() => _MainStatefulWidgetState();
}

class _MainStatefulWidgetState extends State<_MainStatefulWidget> {

  late MainBloc _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of<MainBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc,MainState>(
      builder: (BuildContext context, MainState state) {
        return InternetScaffold(
          backgroundColor: color_white,
          content: SafeArea(
            child: Column(
              children: [
                AutoSizeText(
                  AppLocalizations.of(context).translate("main_route_title")
                ),
                TextButton(
                  child: AutoSizeText(
                    AppLocalizations.of(context).translate("main_route_click_me")
                  ),
                  onPressed: () {
                    _bloc.add(LoadingMainEvent());
                  },
                ),
              ],
            )
          ),
        );
      }
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

}