class Country {
  final String name;
  final String imagePath;
  final String capital;

  const Country({
    required this.name,
    required this.imagePath,
    required this.capital,
  });

  @override
  String toString() => 'Country(name: $name, capital: $capital)';
}

final List<Country> countries = [
  const Country(name: "Egypt", imagePath: 'assets/images/Egypt.jpg', capital: "Cairo"),
  const Country(name: "Austria", imagePath: 'assets/images/Austria.jpg', capital: "Vienna"),
  const Country(name: "Bahrain", imagePath: 'assets/images/Behrain.jpg', capital: "Manama"),
  const Country(name: "Albania", imagePath: 'assets/images/Albania.jpg', capital: "Tirana"),
  const Country(name: "Cuba", imagePath: 'assets/images/Cuba.jpg', capital: "Havana"),
];