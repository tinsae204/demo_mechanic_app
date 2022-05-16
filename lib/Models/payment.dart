
class Payment {
  late String ref_no;
  late DateTime date_;
  late double amount;
  late double percent;

  Payment(
      {required this.ref_no,
      required this.date_,
      required this.amount,
      required this.percent});
}
