class pizza {
  static List<String> sizes = <String>["small", "medium", "large"];

  String size = sizes.elementAt(0);

  Map<String, bool> toppings = new Map();

  pizza() {
    toppings.putIfAbsent('Pepperoni', () => false);
    toppings.putIfAbsent('Suasage', () => false);
    toppings.putIfAbsent('Cheese', () => false);
    toppings.putIfAbsent('Pineapple', () => false);
    toppings.putIfAbsent('Sardines', () => false);
    toppings.putIfAbsent('Onion', () => false);
    toppings.putIfAbsent('Chicken', () => false);
    toppings.putIfAbsent('Mashroom', () => false);
    toppings.putIfAbsent('Peppers', () => false);
    toppings.putIfAbsent('Double Pepperoni', () => false);
    toppings.putIfAbsent('Pregnent', () => false);
    toppings.putIfAbsent('Paneer', () => false);
    toppings.putIfAbsent('Banana', () => false);
  }
}