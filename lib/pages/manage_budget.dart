import 'package:flutter/material.dart';

class ManageBudget extends StatelessWidget {
  const ManageBudget({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue[700],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Text('Manage budget'),
              ),
              Icon(Icons.layers_outlined),
              Icon(Icons.settings_outlined)
              // Flexible(
              //   flex: 1,
              //   child: IconButton(
              //       alignment: Alignment.centerRight,
              //       onPressed: () {},
              //       icon: const Icon(Icons.layers_outlined)),
              // ),
              // Flexible(
              //   flex: 1,
              //   child: IconButton(
              //       alignment: Alignment.centerRight,
              //       onPressed: () {},
              //       icon: const Icon(Icons.settings_outlined)),
              // ),
            ],
          ),
          bottom: TabBar(
            labelColor: Colors.blueGrey[700],
            unselectedLabelColor: Colors.blueGrey[300],
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            tabs: const [
              Tab(
                text: 'Essentials',
              ),
              Tab(
                text: 'Wants',
              ),
              Tab(
                text: 'Savings',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            // Essentials
            Column(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[100],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: double.infinity,
                      height: 10,
                      margin:
                          const EdgeInsets.only(left: 12, right: 12, top: 12),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent[200],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 180,
                      height: 10,
                      margin:
                          const EdgeInsets.only(left: 12, right: 12, top: 12),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[700],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 60,
                      height: 10,
                      margin:
                          const EdgeInsets.only(left: 12, right: 12, top: 12),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12, top: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.circle,
                          color: Colors.blueGrey,
                          size: 13,
                        ),
                      ),
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'KES 24,000 spent',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.circle,
                          color: Colors.blue,
                          size: 13,
                        ),
                      ),
                      Flexible(
                        flex: 6,
                        child: Text(
                          'KES 9,000 available',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Flexible(
                        child: Icon(
                          Icons.circle,
                          color: Colors.lightBlue,
                          size: 13,
                        ),
                      ),
                      Flexible(
                        flex: 6,
                        child: Text(
                          'KES 5,000 unallocated',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12, top: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'Rent and Mortgage',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('KES',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '9500',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'Electricity',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('KES',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '1500',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'Water Bill',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('KES',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '1200',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'Healthcare',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('KES',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '1200',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),

            // Wants
            Column(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[100],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: double.infinity,
                      height: 10,
                      margin:
                          const EdgeInsets.only(left: 12, right: 12, top: 12),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent[200],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 180,
                      height: 10,
                      margin:
                          const EdgeInsets.only(left: 12, right: 12, top: 12),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[700],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 60,
                      height: 10,
                      margin:
                          const EdgeInsets.only(left: 12, right: 12, top: 12),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12, top: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.circle,
                          color: Colors.blueGrey,
                          size: 13,
                        ),
                      ),
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'KES 24,000 spent',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.circle,
                          color: Colors.blue,
                          size: 13,
                        ),
                      ),
                      Flexible(
                        flex: 6,
                        child: Text(
                          'KES 9,000 available',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Flexible(
                        child: Icon(
                          Icons.circle,
                          color: Colors.lightBlue,
                          size: 13,
                        ),
                      ),
                      Flexible(
                        flex: 6,
                        child: Text(
                          'KES 5,000 unallocated',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'Friends and Family',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('KES',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '5000',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'Going Out',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('KES',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '5000',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'Miscellaneous',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('KES',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '5000',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            // Savings
            Column(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[100],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: double.infinity,
                      height: 10,
                      margin:
                          const EdgeInsets.only(left: 12, right: 12, top: 12),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent[200],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 180,
                      height: 10,
                      margin:
                          const EdgeInsets.only(left: 12, right: 12, top: 12),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[700],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 60,
                      height: 10,
                      margin:
                          const EdgeInsets.only(left: 12, right: 12, top: 12),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12, top: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.circle,
                          color: Colors.blueGrey,
                          size: 13,
                        ),
                      ),
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'KES 24,000 spent',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.circle,
                          color: Colors.blue,
                          size: 13,
                        ),
                      ),
                      Flexible(
                        flex: 6,
                        child: Text(
                          'KES 9,000 available',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Flexible(
                        child: Icon(
                          Icons.circle,
                          color: Colors.lightBlue,
                          size: 13,
                        ),
                      ),
                      Flexible(
                        flex: 6,
                        child: Text(
                          'KES 5,000 unallocated',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12, top: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'Fixed Savings',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('KES',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '5000',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'Sacco',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('KES',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '7500',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'Life Insurance',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('KES',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '9500',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'Emergency Fund',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('KES',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '9999',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'Retirement',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('KES',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '3200',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Text(
                          'Forex',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('KES',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '5000',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ));
}
