class TransctionModel {
  final String title, date, amount;
  final bool isWithdraw;

  const TransctionModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isWithdraw});
}
