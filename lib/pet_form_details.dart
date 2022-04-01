import 'package:flutter/material.dart';
import 'form_widgets_and_functions.dart';


class PetFormDetails extends StatefulWidget {
  @override
  _PetFormDetailsState createState() => _PetFormDetailsState();
}

class _PetFormDetailsState extends State<PetFormDetails> {
  //String petCategory;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return Form(
      key: _formkey,
      child: Container(
        child: Column(
            children: <Widget>[
             buildPetDetails(size: size, inputType: 'Category'),
              buildPetDetails(size: size, inputType: 'Breed', hint: 'Breed'),
              buildPetDetails(size: size, inputType: 'Age', hint: 'Age'),
              buildPetDetails(size: size, inputType: 'Sex', hint: 'Sex'),
              buildPetDetails(size: size, inputType: 'VaccineInfo', hint: 'Vaccination Information'),


              submit(_formkey, size)
            ]

          ),
      ),
    );
  }
}
