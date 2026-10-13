void main() {

  String customerName = 'Xylos Leandro';
  bool isVIPMember = true;
  List<double> itemPrices = [249.99, -50.0, 120.0, 450.0];

  print('Customer: $customerName');
  print('VIP Status: $isVIPMember\n');

  for (int i = 0; i < itemPrices.length; i++) {
    print('Processing Item #${i + 1}:');

    try {
      double rawPrice = itemPrices[i];

      double finalPrice = processItemPrice(rawPrice, isVIPMember);
      print(' Final calculated price: \$$finalPrice');

      if (finalPrice >= 300.0) {
        print(' Category: Premium Purchase (Free Express Shipping)');
      } else if (finalPrice >= 100.0) {
        print(' Category: Standard Purchase (Standard Shipping)');
      } else {
        print(' Category: Small Purchase (Handling Fee Applies)');
      }

    } catch (e) {
      print(' [ERROR CAUGHT]: $e');
    }

  }
}

double processItemPrice(double price, bool isVIP) {
  if (price < 0) {
    throw FormatException('Item price cannot be negative (\$$price)');
  }

  if (isVIP && price > 200.0) {
    return price * 0.85;
  } else if (price > 200.0) {
    return price * 0.90;
  }

  return price;
}
