import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    var _currentCount = 1;
    return Container(
      padding: EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          createIncrementDicrementButton(Icons.remove),
          Text(_currentCount.toString()),
          createIncrementDicrementButton(Icons.add),
        ],
      ),
    );
  }

  Widget createIncrementDicrementButton(IconData icon) {
    return RawMaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.padded,
      constraints: const BoxConstraints(minWidth: 24.0, minHeight: 24.0),
      elevation: 2.0,
      child: Container(
        color: const Color(0xffCF9775),
        child: Icon(
          icon,
          size: 23,
          color: Colors.white,
        ),
      ),
      shape: const CircleBorder(),
      onPressed: () {},
    );
  }
}
