import 'package:flutter/material.dart';

class Added extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[300],
        title: Text(
          'Food.com',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Icon(
            Icons.check,
            size: 100,
            color: Colors.green,
          ),
          Text(
            'Added',
            style: TextStyle(
              fontSize: 50,
              color: Colors.black,
            ),
          ),
          Text(
            'Successfully',
            style: TextStyle(
              fontSize: 50,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(180, 80),
              primary: Colors.deepOrange[300],
              onPrimary: Colors.black,
            ),
            child: Text(
              'Get back',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      )),
    ));
  }
}
