List<double> convertToF(List<double> temperaturesInC) {
  List<double> tempsInF = temperaturesInC.map((temp) {
    double tempInF = ((temp * 1.8) + 32);
    return double.parse(tempInF.toStringAsFixed(2));
  }).toList();
  return tempsInF;
}
