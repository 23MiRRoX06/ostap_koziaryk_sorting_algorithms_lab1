import '../model/vacation_package.dart';

var swapNumber = 0;
var comparisonNumber = 0;
var shiftNumber = 0;

//Sorting function that uses inserion sort algorithm to sort Vacation Packages by duration
void sortPackagesByDurationDescending(List<VacationPackage> packages) {
  for (var firstUnsortedElementIndex = 1;
      firstUnsortedElementIndex < packages.length;
      firstUnsortedElementIndex++) {
    var storedValue = packages[firstUnsortedElementIndex];
    var sortedElementIndex = firstUnsortedElementIndex - 1;
    comparisonNumber++;
    while (sortedElementIndex >= 0 &&
        packages[sortedElementIndex].durationInDays <
            storedValue.durationInDays) {
      packages[sortedElementIndex + 1] = packages[sortedElementIndex];
      sortedElementIndex--;
      shiftNumber++;
    }
    packages[sortedElementIndex + 1] = storedValue;
  }
  print('Number of comparisons: $comparisonNumber');
  print('Number of shifts: $shiftNumber');
}

int partition(List<VacationPackage> packages, int startIndex, int endIndex) {
  var pivot = packages[endIndex];
  int smallerElementIndex = startIndex - 1;
  for (int currentElementIndex = startIndex;
      currentElementIndex < endIndex;
      currentElementIndex++) {
    if (packages[currentElementIndex].priceInEuros < pivot.priceInEuros) {
      smallerElementIndex++;
      var temp = packages[smallerElementIndex];
      packages[smallerElementIndex] = packages[currentElementIndex];
      packages[currentElementIndex] = temp;
    }
  }
  var temp = packages[smallerElementIndex + 1];
  packages[smallerElementIndex + 1] = packages[endIndex];
  packages[endIndex] = temp;
  swapNumber++;
  return smallerElementIndex + 1;
}

//Sorting function that uses quickSort algorithm to sort Vacation Packages by price
void sortPackagesByPriceAscending(
    List<VacationPackage> packages, int startIndex, int endIndex) {
  if (startIndex < endIndex) {
    int partitioningIndex = partition(packages, startIndex, endIndex);
    sortPackagesByPriceAscending(packages, startIndex, partitioningIndex - 1);
    sortPackagesByPriceAscending(packages, partitioningIndex + 1, endIndex);
  }
}
