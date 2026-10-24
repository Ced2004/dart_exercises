void main() {
  String customerName = 'Maria Santos';
  int cupsOrdered = 5;
  double pricePerCup = 45.50;
  bool carriesLoyaltyCard = true;

  double subtotal = cupsOrdered * pricePerCup;

  int freePastriesEarned = cupsOrdered ~/ 2;

  int cupsToNextReward = 2 - (cupsOrdered % 2);

  double discountAmount = carriesLoyaltyCard ? (subtotal * 0.10) : 0.0;
  double finalTotal = subtotal - discountAmount;

  bool qualifiesForBulkDiscount = cupsOrdered >= 5;
  bool isLargeOrder = finalTotal > 200.00;

  print('=== NTC CAMPUS CAFE RECEIPT ===');
  print('Customer Name: $customerName');
  print('Items Ordered: $cupsOrdered cup(s) of coffee at ₱$pricePerCup each');
  print('Subtotal: ₱${subtotal.toStringAsFixed(2)}');
  print('Loyalty Card Holder: $carriesLoyaltyCard');
  print('Discount Applied: ₱${discountAmount.toStringAsFixed(2)}');
  print('Final Amount Due: ₱${finalTotal.toStringAsFixed(2)}');
  print('----------------------------------');
  print('Bonus Pastries Earned: $freePastriesEarned');
  print('Cups needed for next reward: $cupsToNextReward');
  print('Qualifies for Bulk Order Discount: $qualifiesForBulkDiscount');
  print('Is this a large transaction (>₱200)? $isLargeOrder');
  print('==================================');
}
