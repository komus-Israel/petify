import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pet_form_details.dart';

class SellPage extends StatefulWidget {
  @override
  _SellPageState createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/sell.png')
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                    'Package Information',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white70
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(10),

                ),
              ),
              //The form Widgets
              PetFormDetails()
            ],
          ),
        ),
      ),
    )
    );

  }
}
