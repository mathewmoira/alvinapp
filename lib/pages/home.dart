import 'package:flutter/material.dart';
import 'manage_budget.dart';

Color alvin = const Color(0xFF05648a);

class Home extends StatelessWidget {
  const Home({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: <Widget>[
          const SizedBox(
            width: double.infinity,
            height: 180,
            child: Center(
              child: Text(
                'Your New Smart Money Pocket Companion!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: (32),
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 250,
            margin: const EdgeInsets.all(12),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                      margin: const EdgeInsets.all(4),
                      height: 120,
                      color: Colors.blueAccent,
                      child: const Center(
                        child: Text(
                          'Get set up in 2 minutes.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: (15),
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                      margin: const EdgeInsets.all(4),
                      height: 120,
                      color: Colors.blueAccent,
                      child: const Center(
                        child: Text(
                          'Convenient support.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: (15),
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                      margin: const EdgeInsets.all(4),
                      height: 120,
                      color: Colors.blueAccent,
                      child: const Center(
                        child: Text(
                          'Powerful analytics.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: (15),
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )),
                ),
              ],
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const ManageBudget(title: 'Manage budget')));
            },
            icon: const Icon(Icons.payment),
            label: const Text('Click HERE to Manage your Budget'),
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.blue[700],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
          ),
        ]),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'AlvinApp',
              style: TextStyle(
                  color: Colors.blue[900], fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
