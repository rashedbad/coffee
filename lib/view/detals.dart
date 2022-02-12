import 'package:coffee/conter_detals/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../List/List_detals.dart';

class Details extends StatefulWidget {
  final Detals_List d;

  // ignore: use_key_in_widget_constructors
  const Details(this.d);

  @override
  State<Details> createState() => _DetailsState();
}

bool isSaizUse1 = false;
bool isSaizUse2 = false;
bool isSaizUse3 = false;
bool isSaizSuger1 = false;
bool isSaizSaizSuger2 = false;
bool isSaizSaizSuger3 = false;

class _DetailsState extends State<Details> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/image/pattern.png"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 30,
                      blurRadius: 20,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  color: Colors.brown.shade200),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80),
                          child: Text(
                            widget.d.name,
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: SvgPicture.asset(
                        widget.d.svg,
                        width: 70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.d.name,
                              style: const TextStyle(fontSize: 20),
                            ),
                            const Counter(),
                          ],
                        ),
                        Text(
                          widget.d.price,
                          style: const TextStyle(
                              color: Color(
                                0xffCF9775,
                              ),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Size',
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isSaizUse1 = !isSaizUse1;
                            });
                          },
                          icon: Icon(
                            isSaizUse1
                                ? Icons.coffee_maker
                                : Icons.coffee_maker_outlined,
                          ),
                          color: const Color(
                            0xffCF9775,
                          ),
                          iconSize: 35,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isSaizUse2 = !isSaizUse2;
                            });
                          },
                          icon: Icon(
                            isSaizUse2
                                ? Icons.coffee_maker
                                : Icons.coffee_maker_outlined,
                          ),
                          color: const Color(
                            0xffCF9775,
                          ),
                          iconSize: 45,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isSaizUse3 = !isSaizUse3;
                            });
                          },
                          icon: Icon(
                            isSaizUse3
                                ? Icons.coffee_maker
                                : Icons.coffee_maker_outlined,
                          ),
                          color: const Color(
                            0xffCF9775,
                          ),
                          iconSize: 55,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: Row(
                      children: [
                        const Text(
                          'Suger ',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '(in Cubes)',
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.shade400),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isSaizSuger1 = !isSaizSuger1;
                          });
                        },
                        icon: Icon(isSaizSuger1
                            ? Icons.looks_one
                            : Icons.looks_one_outlined),
                        color: const Color(
                          0xffCF9775,
                        ),
                        iconSize: 35,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isSaizSaizSuger2 = !isSaizSaizSuger2;
                          });
                        },
                        icon: Icon(isSaizSaizSuger2
                            ? Icons.looks_two
                            : Icons.looks_two_outlined),
                        color: const Color(
                          0xffCF9775,
                        ),
                        iconSize: 35,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isSaizSaizSuger3 = !isSaizSaizSuger3;
                          });
                        },
                        icon: Icon(isSaizSaizSuger3
                            ? Icons.looks_3
                            : Icons.looks_3_outlined),
                        color: const Color(
                          0xffCF9775,
                        ),
                        iconSize: 35,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80,
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xffCF9775),
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Add To Cart',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
