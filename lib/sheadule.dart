import 'cards/reusable.dart';
import 'package:flutter/material.dart';

class Sheadule extends StatefulWidget {
  const Sheadule({Key key}) : super(key: key);

  @override
  _SheaduleState createState() => _SheaduleState();
}

class _SheaduleState extends State<Sheadule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sheadule & Diet Plan')),
        leading: Navigator.canPop(context)
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 40,
                ),
                onPressed: () => Navigator.of(context).pop(),
              )
            : null,
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Reusablecard(
                color: Colors.grey,
                card: Container(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Workout Sheadule',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Reusablecard(
                color: Colors.grey,
                card: Container(
                  child: Column(
                    children: [
                      Text(
                        'Diet Plan',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
