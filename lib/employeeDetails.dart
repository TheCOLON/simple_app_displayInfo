import 'package:flutter/material.dart';
import 'employee_class.dart';

class DetailsPage extends StatelessWidget {
  final Employee details;

  final List<String> titles = <String>[
    'Employee Number',
    'Name',
    'Birthday',
    'Gender',
    'Address',
  ];

  DetailsPage({required this.details, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee's Details"),
      ),
      body: Center(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.cyan.shade800,
              Colors.cyan.shade100,
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  const SizedBox(height: 50),
                  const Text(
                    'Employee Number:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 40),
                  ),
                  Expanded(
                    child: Text(
                      "${details.employeeNumber}",
                      style: const TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  const SizedBox(height: 50),
                  const Text(
                    'Name:           ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 40),
                  ),
                  Expanded(
                    child: Text(
                      "${details.name}",
                      style: const TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  const SizedBox(height: 50),
                  const Text(
                    'Birthday:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 40),
                  ),
                  Expanded(
                    child: Text(
                      "${details.birthday}",
                      style: const TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  const SizedBox(height: 50),
                  const Text(
                    'Gender:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 40),
                  ),
                  Expanded(
                    child: Text(
                      "${details.gender}",
                      style: const TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  const SizedBox(height: 50),
                  const Text(
                    'Address:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 40),
                  ),
                  Expanded(
                    child: Text(
                      "${details.address}",
                      style: const TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )

          //  Column(children: <Widget>[
          //   const SizedBox(height: 30),
          //   Container(
          //     margin: const EdgeInsets.only(left: 20, right: 20),
          //     child: Row(
          //       children: <Widget>[
          //         const SizedBox(height: 50),
          //         const Text(
          //           'Employee Number:',
          //           textAlign: TextAlign.left,
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 20,
          //           ),
          //         ),
          //         const Padding(
          //           padding: EdgeInsets.only(right: 40),
          //         ),
          //         Expanded(
          //           child: Text(
          //             "${details.employeeNumber}",
          //             style: const TextStyle(color: Colors.black),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          //   Container(
          //     margin: const EdgeInsets.only(left: 20, right: 20),
          //     child: Row(
          //       children: <Widget>[
          //         const SizedBox(height: 50),
          //         const Text(
          //           'Name:           ',
          //           textAlign: TextAlign.left,
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 20,
          //           ),
          //         ),
          //         const Padding(
          //           padding: EdgeInsets.only(right: 40),
          //         ),
          //         Expanded(
          //           child: Text(
          //             "${details.name}",
          //             style: const TextStyle(color: Colors.black),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          //   Container(
          //     margin: const EdgeInsets.only(left: 20, right: 20),
          //     child: Row(
          //       children: <Widget>[
          //         const SizedBox(height: 50),
          //         const Text(
          //           'Birthday:',
          //           textAlign: TextAlign.left,
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontWeight: FontWeight.bold,
          //               fontSize: 20),
          //         ),
          //         const Padding(
          //           padding: EdgeInsets.only(right: 40),
          //         ),
          //         Expanded(
          //           child: Text(
          //             "${details.birthday}",
          //             style: const TextStyle(color: Colors.black),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          //   Container(
          //     margin: const EdgeInsets.only(left: 20, right: 20),
          //     child: Row(
          //       children: <Widget>[
          //         const SizedBox(height: 50),
          //         const Text(
          //           'Gender:',
          //           textAlign: TextAlign.left,
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 20,
          //           ),
          //         ),
          //         const Padding(
          //           padding: EdgeInsets.only(right: 40),
          //         ),
          //         Expanded(
          //           child: Text(
          //             "${details.gender}",
          //             style: const TextStyle(color: Colors.black),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          //   Container(
          //     margin: const EdgeInsets.only(left: 20, right: 20),
          //     child: Row(
          //       children: <Widget>[
          //         const SizedBox(height: 50),
          //         const Text(
          //           'Address:',
          //           textAlign: TextAlign.left,
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 20,
          //           ),
          //         ),
          //         const Padding(
          //           padding: EdgeInsets.only(right: 40),
          //         ),
          //         Expanded(
          //           child: Text(
          //             "${details.address}",
          //             style: const TextStyle(color: Colors.black),
          //           ),
          //         )
          //       ],
          //     ),
          //   )
          // ]),

          // body: ListView(
          //   padding: const EdgeInsets.only(left: 2),
          //   shrinkWrap: true,
          //   children: <Widget>[
          //     ListTile(
          //       textColor: Colors.black,
          //       title: Row(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           const Expanded(
          //             flex: 4,
          //             child: Text('Employee Number'),
          //           ),
          //           Expanded(
          //             flex: 9,
          //             child: Text(': ${details.employeeNumber}'),
          //           ),
          //         ],
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 6,
          //     ),
          //     ListTile(
          //       textColor: Colors.black,
          //       title: Row(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           const Expanded(
          //             flex: 4,
          //             child: Text('Name'),
          //           ),
          //           Expanded(
          //             flex: 9,
          //             child: Text(': ${details.name}'),
          //           ),
          //         ],
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 6,
          //     ),
          //     ListTile(
          //       textColor: Colors.black,
          //       title: Row(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           const Expanded(
          //             flex: 4,
          //             child: Text('Birthday'),
          //           ),
          //           Expanded(
          //             flex: 9,
          //             child: Text(': ${details.birthday}'),
          //           ),
          //         ],
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 6,
          //     ),
          //     ListTile(
          //       textColor: Colors.black,
          //       title: Row(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           const Expanded(
          //             flex: 4,
          //             child: Text('Gender'),
          //           ),
          //           Expanded(
          //             flex: 9,
          //             child: Text(': ${details.gender}'),
          //           ),
          //         ],
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 6,
          //     ),
          //     const SizedBox(
          //       height: 6,
          //     ),
          //     ListTile(
          //       textColor: Colors.black,
          //       title: Row(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           const Expanded(
          //             flex: 4,
          //             child: Text('Address'),
          //           ),
          //           Expanded(
          //             flex: 9,
          //             child: Text(': ${details.address}'),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          ),
    );
  }
}
