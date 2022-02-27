import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kemal_tariffs/app.dart';
import 'package:kemal_tariffs/tariff_repository.dart';
import 'package:kemal_tariffs/simple_bloc_observer.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(App(tariffRepository: TariffRepository())),
    blocObserver: SimpleBlocObserver(),
  );
}
