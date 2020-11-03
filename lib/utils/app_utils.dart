import 'dart:io';
import 'package:ostap_koziaryk_sorting_algorithms_lab1/algorithm/vacation_package_sorting.dart';
import 'package:ostap_koziaryk_sorting_algorithms_lab1/model/vacation_package.dart';

void sortPackagesByDurationDescendingTest(String dataPath, bool withHeaderRow) {
  var vacationPackages = loadValuesFromCsv(dataPath, withHeaderRow);
  print('Insertion Sort(Descending):');
  var stopWatch = Stopwatch()..start();
  sortPackagesByDurationDescending(vacationPackages);
  stopWatch.stop();
  print('Execution time in microseconds: ${stopWatch.elapsedMicroseconds}');
  print('Results:');
  for (var package in vacationPackages) {
    print(package);
  }
}

void sortPackagesByPriceAscendingTest(String dataPath, bool withHeaderRow) {
  var vacationPackages = loadValuesFromCsv(dataPath, withHeaderRow);
  print('Quick Sort(Ascending):');
  var stopWatch = Stopwatch()..start();
  sortPackagesByPriceAscending(
      vacationPackages, 0, vacationPackages.length - 1);
  stopWatch.stop();
  print('Execution time in microseconds: ${stopWatch.elapsedMicroseconds}');
  print('Results:');
  for (var package in vacationPackages) {
    print(package);
  }
}

List<VacationPackage> loadValuesFromCsv(String dataPath, bool withHeaderRow) {
  withHeaderRow ??= false;
  var csvPackages = withHeaderRow
      ? File(dataPath).readAsLinesSync().sublist(1)
      : File(dataPath).readAsLinesSync();
  var vacationPackages = [
    for (var csvPackage in csvPackages) VacationPackage.fromCsv(csvPackage)
  ];
  return vacationPackages;
}
