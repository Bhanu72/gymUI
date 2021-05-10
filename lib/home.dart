import 'package:flutter/material.dart';
import 'sheadule.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Profile'),
          actions: [
            ElevatedButton(
              onPressed:
                  null, //machan put here code to navigate the login screen,
              child: Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                  textStyle:
                      MaterialStateProperty.all(TextStyle(fontSize: 18))),
            ),
          ],
        ),
        body: MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DataTable(
            columns: <DataColumn>[
              DataColumn(
                label: Text(
                  'Coach',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 24),
                ),
              ),
              DataColumn(
                label: Text(
                  'View more',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 24),
                ),
              ),
            ],
            rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Coach1@gmail.com')),
                  DataCell(ElevatedButton(
                    child: Text('View'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sheadule(),
                        ),
                      );
                    },
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Coach2@gmail.com')),
                  DataCell(ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sheadule(),
                        ),
                      );
                    },
                    child: Text('View'),
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Coach3@gmail.com')),
                  DataCell(ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sheadule(),
                        ),
                      );
                    },
                    child: Text('View'),
                  )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
