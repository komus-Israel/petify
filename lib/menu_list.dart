import 'package:flutter/material.dart';
import 'profile.dart';
import 'routes.dart';

class MenuList extends StatefulWidget {
  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.person_outlined
          ),
          onTap: () => openProfile(context),
            title: Text('Profile')
        ),

        ListTile(
            leading: Icon(
                Icons.shopping_cart_sharp
            ),
            onTap: (){},
            title: Text('Cart')
        ),

        ListTile(
            leading: Icon(
                Icons.policy
            ),
            onTap: (){},
            title: Text('Policy')
        ),

        ListTile(
            leading: Icon(
                Icons.assignment_return_outlined
            ),
            onTap: (){},
            title: Text('Sign Out')
        ),


      ],
    );
  }
}
