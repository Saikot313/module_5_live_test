void main() {

  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0},
  ];


  displayFruitDetails(fruits);

  applyPriceDiscount(fruits, 10);

  print('\nAfter Applying Discount:');
  displayFruitDetails(fruits);
}


void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  print('Fruit Details:');
  for (var fruit in fruits) {
    print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  }
}


void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double currentPrice = fruit['price'];
    double discountAmount = (discountPercentage / 100) * currentPrice;
    double discountedPrice = currentPrice - discountAmount;
    fruit['price'] = discountedPrice;
  }
}

