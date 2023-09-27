import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(Icons.arrow_back),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/'),
            child: const Icon(Icons.home),
          ),
          const Icon(Icons.shopping_basket_outlined)
        ],
      ),
    );
  }
}
//
// BottomNavigator(BuildContext
// context) //класс с последней страницей кнопки назад.pop и корзиной
// {
//   return Container(
//     height: 60,
//     decoration: BoxDecoration(
//         color: Theme
//             .of(context)
//             .primaryColor,
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         )),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         const Icon(Icons.arrow_back),
//         ElevatedButton(
//             child: const Icon(Icons.home),
//             onPressed: () {
//               Navigator.pushNamed(context, '/');
//             }),
//         const Icon(Icons.shopping_basket_outlined)
//       ],
//     ),
//   );
// }
