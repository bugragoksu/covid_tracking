import 'package:covid_tracking/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  generateForDir: [
    'lib',
  ],
)
void configureDependencies() => $initGetIt(getIt);
