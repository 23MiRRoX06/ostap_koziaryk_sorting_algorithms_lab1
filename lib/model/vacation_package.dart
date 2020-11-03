class VacationPackage {
  String featuredCountry;
  int durationInDays;
  int priceInEuros;

  VacationPackage.fromCsv(String fieldValuesInCsv) {
    var fieldValues = fieldValuesInCsv.split(',');
    featuredCountry = fieldValues[0];
    durationInDays = int.parse(fieldValues[1]);
    priceInEuros = int.parse(fieldValues[2]);
  }

  VacationPackage(this.featuredCountry, this.durationInDays, this.priceInEuros);

  @override
  String toString() {
    return 'VacationPackage: [featuredCountry: $featuredCountry, durationInDays: $durationInDays, priceInEuros: $priceInEuros]';
  }
}
