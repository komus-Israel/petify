import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String petCategory;
String petBreed;
String petAge;
String petSex;
String petVaccineInfo;


savePetDetails(value, inputType){
  if (inputType == 'Category'){
    petCategory = value;
  }

  if (inputType == 'Breed'){
    petBreed = value;
  }

  if (inputType == 'Age'){
    petAge = value;
  }

  if (inputType == 'Sex'){
    petSex = value;
  }

  if (inputType == 'VaccineInfo'){
    petVaccineInfo = value;
  }
}

Widget buildPetDetails({size, String hint : 'Category', String inputType}){
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20.0),
    child: Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.grey[500].withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),

      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              //hintStyle: kBodyText,
            ),
            onSaved: (String value)=>savePetDetails(value, inputType)

          ),
        ),
      ),
    ),
  );
}

Widget submit(formkey, size){
  return Container(
    width: size.width * 0.8,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.deepOrange[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),

        onPressed: (){
          formkey.currentState.save();
          print(petCategory);
          print(petBreed);
          print(petAge);
          print(petSex);
          print(petVaccineInfo);
        },
        child: Text(
          'Upload Package for Sale',
          style: TextStyle(
            color: Colors.deepOrange[900]
          ),
        )


    ),
  );
}