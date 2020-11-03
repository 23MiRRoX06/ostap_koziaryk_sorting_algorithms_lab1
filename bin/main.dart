import 'dart:io';
import 'package:ostap_koziaryk_sorting_algorithms_lab1/utils/app_utils.dart';
import 'package:string_validator/string_validator.dart';

void main(List<String> arguments) {
  var dataPath = arguments[0];
  print('Does your data file have header row? (true/False)');
  bool withHeaderRow = toBoolean(stdin.readLineSync());
  sortPackagesByDurationDescendingTest(dataPath, withHeaderRow);
  sortPackagesByPriceAscendingTest(dataPath, withHeaderRow);
}
