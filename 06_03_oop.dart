abstract class PaymentMethod {
  processPayment(double amount);
}

class CardPayment extends PaymentMethod {

  processPayment(double amount) {
    print("Processing card..... 2% fee added");
  }
}

class CashPayment extends PaymentMethod {

  processPayment(double amount){
    print("Processing cash...... no fee");
  }
}

void main(List<String> args) {
  List<PaymentMethod> transactions = [
    CardPayment(),
    CashPayment(),
    CardPayment()
  ];

  for (var payment in transactions) {
    payment.processPayment(1000); // Dart knows which one to call!
  }
  // CashPayment invoice = CashPayment();
  // invoice.processPayment(500);

  // CardPayment invoice2 = CardPayment();
  // invoice2.processPayment(650);

}