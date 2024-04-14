import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenssess_item.dart';

// class AllExpensessListView extends StatefulWidget {
//   const AllExpensessListView({super.key});

//   @override
//   State<AllExpensessListView> createState() => _AllExpensessListViewState();
// }

// class _AllExpensessListViewState extends State<AllExpensessListView> {
// final items = [
//     AllExpensessItemModel(
//         image: Assets.imagesBalance,
//         title: 'Blance',
//         date: 'April 2022',
//         price: r'$20,129'),
//     AllExpensessItemModel(
//         image: Assets.imagesIncome,
//         title: 'Income',
//         date: 'April 2022',
//         price: r'$20,129'),
//     AllExpensessItemModel(
//         image: Assets.imagesExpenses,
//         title: 'Expensess',
//         date: 'April 2022',
//         price: r'$20,129'),
//   ];
//   int selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//         children: items.asMap().entries.map((e) {
//       int index = e.key;
//       var item = e.value;
//       if (index == 1) {
//         return Expanded(
//           child: GestureDetector(
//             onTap: () {
//               updateIndex(index);
//             },
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
//               child: AllExpensessItem(
//                   isSelected: selectedIndex == index, itemModel: item),
//             ),
//           ),
//         );
//       } else {
//         return Expanded(
//           child: GestureDetector(
//             onTap: () {
//               updateIndex(index);
//             },
//             child: AllExpensessItem(
//                 isSelected: selectedIndex == index, itemModel: item),
//           ),
//         );
//       }
//     }).toList());
//   }

//   void updateIndex(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }
// }

class AllExpensessItemsListView extends StatefulWidget {
  const AllExpensessItemsListView({super.key});

  @override
  State<AllExpensessItemsListView> createState() =>
      _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
  final items = [
    const AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 0,
              itemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 1,
              itemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 2,
              itemModel: items[2],
            ),
          ),
        )
      ],
    );
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensessItem(
                isSelected: selectedIndex == index,
                itemModel: item,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
