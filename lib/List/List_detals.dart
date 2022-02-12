// ignore_for_file: camel_case_types

class Detals_List {
  final String name;
  final String svg;
  final String price;

  Detals_List(this.name, this.svg, this.price);
}

List<Detals_List> detals = [
  Detals_List("Espresso", "assets/image/Espresso.svg", "2.5JD"),
  Detals_List("Cappuccino", "assets/image/Cappuccino.svg", "3 JD"),
  Detals_List("macchiato", "assets/image/macciato.svg", "4 JD"),
  Detals_List("Mocha", "assets/image/Mocha.svg", "3.7 JD"),
  Detals_List("latte", "assets/image/latte.svg", "3.5 JD"),
];
