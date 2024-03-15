void main() {
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0},
  ];

  printFruits(fruits, 'Original Fruits');

  applyDiscount(fruits, 0.1); 

  printFruits(fruits, 'Discounted Fruits');
}

void printFruits(List<Map<String, dynamic>> fruits, String label) {
  print(label);
  for (var fruit in fruits) {
    print('${fruit['name']} (${fruit['color']}) - \$${fruit['price']}');
  }
  print('');
}

void applyDiscount(List<Map<String, dynamic>> fruits, double discount) {
  for (var fruit in fruits) {
    fruit['price'] = fruit['price'] * (1 - discount);
  }
}
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  print('Fruit Details:');
  for (var fruit in fruits) {
    print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  }
  print('');
}
void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double discountedPrice = fruit['price'] * (1 - discountPercentage);
    fruit['price'] = discountedPrice;
  }
}
