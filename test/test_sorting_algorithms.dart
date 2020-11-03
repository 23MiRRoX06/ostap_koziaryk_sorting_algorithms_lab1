import 'package:ostap_koziaryk_sorting_algorithms_lab1/algorithm/vacation_package_sorting.dart';
import 'package:ostap_koziaryk_sorting_algorithms_lab1/model/vacation_package.dart';
import 'package:test/test.dart';

List<VacationPackage> packages = [
  VacationPackage('Poland', 5, 200),
  VacationPackage('Denmark', 6, 600),
  VacationPackage('Ukraine', 7, 150),
  VacationPackage('Germany', 8, 400)
];

void main() {
  test('test util method for sorting vacation packages by duration correctly',
      () {
    sortPackagesByDurationDescending(packages);
    var sortedPackagesDuration = [
      for (var package in packages) package.durationInDays
    ];
    expect(sortedPackagesDuration, [8, 7, 6, 5]);
  });

  test('test util method for sorting vacation packages by price correctly', () {
    sortPackagesByPriceAscending(packages, 0, packages.length - 1);
    var sortedPackagesPrice = [
      for (var package in packages) package.priceInEuros
    ];
    expect(sortedPackagesPrice, [150, 200, 400, 600]);
  });
}
