import 'package:flutter/material.dart';

import 'additem.dart';

class Completedoderpage extends StatefulWidget {
  const Completedoderpage({super.key});

  @override
  State<Completedoderpage> createState() => _CompletedoderpageState();
}

class _CompletedoderpageState extends State<Completedoderpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'Order no #1190',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    // leading: Image.asset(
                    //   "assets/Photo.jpeg",
                    // ),
                    title: const Text(
                      'Sormi Gohil',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('Delhi NCR'),
                    trailing: OutlinedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green)),
                        onPressed: () {},
                        child: const Text(
                          'Paid',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'Order Completed!',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'Order no #1190',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    // leading: Image.asset(
                    //   "assets/Photo.jpeg",
                    // ),
                    title: const Text(
                      'Anjali Gangera',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('Delhi NCR'),
                    trailing: OutlinedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green)),
                        onPressed: () {},
                        child: const Text(
                          'Paid',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'Order Completed!',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // const Spacer(),
            // Row(
            //   children: [
            //     Expanded(
            //       child: OutlinedButton(
            //         onPressed: () {
            //           Navigator.push(context,
            //               MaterialPageRoute(builder: (context) => Additem()));
            //         },
            //         child: const Text(
            //           'Add Items',
            //           style: TextStyle(color: Colors.white),
            //         ),
            //         style: ButtonStyle(
            //             backgroundColor:
            //                 MaterialStateProperty.all<Color>(Colors.green)),
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}