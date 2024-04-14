import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';

import 'title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hint: 'Type customer name ',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type customer email ',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hint: 'Type customer name ',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Item mount ',
                hint: 'USD ',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(children: [
          Expanded(
            child: CustomButton(
              textColor: Color(0xFF4DB7F2),
              backgroundColor: Colors.transparent,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: CustomButton(),
          ),
        ]),
      ],
    );
  }
}
