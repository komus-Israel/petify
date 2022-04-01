import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'market_place.dart';
import 'profile.dart';
import 'menu_list.dart';

//This route function navigates the splashscreen to the homescreen
void openHomePage(context){
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
          builder: (context) => HomePage(),
          fullscreenDialog: false

      ),
          (route) => false
  );
}

//This route to the profile
void openProfile(context){
  Navigator.pop(context);
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Profile(),
      fullscreenDialog: true
    )
  );
}

//drawer

class RightDrawerWidget extends StatelessWidget {

  RightDrawerWidget({
    Key key
}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10)
                
              ),
              color: Colors.deepOrange,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  offset: Offset(0.0, 5.0),
                  blurRadius: 10
                )
              ]
            ),

            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'petify.com',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  decoration: TextDecoration.overline
                ),
              ),
            ),

          ),
          MenuList(),
        ],
      ),
    );
  }
}
//to navigate the route of the tabs in the market place page
void tabChanged(tabcontroller){
  if (tabcontroller.indexIsChanging){
    print('tab changed: ${tabcontroller.index}');
  }
}



