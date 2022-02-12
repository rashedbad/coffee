import 'package:coffee/List/List_detals.dart';
import 'package:coffee/view/detals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListCoffee extends StatelessWidget {
  final Detals_List d;

  // ignore: use_key_in_widget_constructors
  const ListCoffee(this.d);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 10, right: 10),
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                d.svg,
                width: 70,
              ),
              const SizedBox(
                width: 25,
              ),
              Text(d.name),
            ],
          ),
          const Icon(
            Icons.arrow_right_outlined,
            size: 35,
            color: Color(0xffB98875),
          )
        ],
      ),
    );
  }
}

//  {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => Details(detals.elementAt(index))
//                       ));
//             }