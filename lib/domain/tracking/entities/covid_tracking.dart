import 'package:equatable/equatable.dart';

class CovidTracking extends Equatable {
  const CovidTracking(
    this.countryText,
    this.lastUpdate,
    this.totalCasesText,
    this.totalDeathsText,
    this.totalRecoveredText,
  );

  final String countryText;
  final String lastUpdate;
  final String totalCasesText;
  final String totalDeathsText;
  final String totalRecoveredText;

  @override
  List<Object?> get props => [
        countryText,
        lastUpdate,
        totalCasesText,
        totalDeathsText,
        totalRecoveredText,
      ];
}
