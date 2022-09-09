import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/second_page.dart';
import 'package:provider/provider.dart';

import 'data_class.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(CupertinoIcons.shopping_cart),
                  Text(
                    'Shopping Cart ',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              thickness: 3,
              color: Colors.black,
            ),
            const SizedBox(
              height: 200,
            ),
            Container(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Consumer<DataClass>(builder: (context, dataClass, child) {
                    return Text(
                      '${dataClass.count}',
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w500),
                    );
                  }),
                  const Text(
                    'Total',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 40,
                  ),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.grey.shade50,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Provider.of<DataClass>(context, listen: false)
                                .incrementCount();
                            // count++;
                            // setState(() {});
                          },
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const SecondPage()),
                    // );

                    // Get.snackbar('Item', 'Can not be more than this');
                    Get.to(const SecondPage());
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 29),
                    height: 50,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.black,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Next Page',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
