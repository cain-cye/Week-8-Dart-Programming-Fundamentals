void main() {

  String customerName = 'Xylos Leandro';
  bool isVIPMember = true;
  List<double> itemPrices = [249.99, -50.0, 120.0, 450.0];

  print('Customer: $customerName');
  print('VIP Status: $isVIPMember\n');

  try {
    double grandTotal = processOrderBatch(itemPrices, isVIPMember);
    print('Grand Total for valid items: \$$grandTotal');
  } catch (e) {
    print('[GLOBAL ERROR]: $e');
  }
}

double processOrderBatch(List<double> prices, bool isVIP) {
  double total = 0.0;

  for (int i = 0; i < prices.length; i++) {
    print('Processing Item #${i + 1}:');

    try {
      double price = prices[i];

      if (price < 0) {
        throw FormatException('Item price cannot be negative (\$$price)');
      }

      double finalPrice = (isVIP && price > 200.0) ? price * 0.85 : price;

      if (finalPrice >= 300.0) {
        print(' Price: \$$finalPrice (Category: Premium - Free Express)');
      } else if (finalPrice >= 100.0) {
        print(' Price: \$$finalPrice (Category: Standard)');
      } else {
        print(' Price: \$$finalPrice (Category: Small)');
      }

      total += finalPrice;

    } catch (e) {
      print(' [ERROR CAUGHT]: $e');
    }
  }

  return total;
}  
