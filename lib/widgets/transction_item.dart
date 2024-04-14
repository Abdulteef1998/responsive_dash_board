import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransctionItem extends StatelessWidget {
  const TransctionItem({
    super.key,
    required this.transctionModel,
  });
  final TransctionModel transctionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transctionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(transctionModel.date,
            style: AppStyles.styleRegular16(context).copyWith(
              color: Color(0xFFAAAAAA),
            )),
        trailing: Text(
          transctionModel.amount,
          style: AppStyles.styleSemiBold24(context).copyWith(
              color: transctionModel.isWithdraw
                  ? Color(0xFFF3735E)
                  : Color(0xFF7CD87A)),
        ),
      ),
    );
  }
}
