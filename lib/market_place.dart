import 'package:flutter/material.dart';
import 'routes.dart';
import 'sell.dart';
import 'buy.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState(){
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(()=>tabChanged(_tabController));
  }

  @override
  void dispose(){
    super.dispose();

    @override
    void dispose(){
      _tabController.dispose();
      super.dispose();
    }
    _tabController.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Market Place'),

      ),
      body: SafeArea(
        child: TabBarView(
                controller: _tabController,
                children: [
                  BuyPage(),
                  SellPage(),
                ],
              ),
            ),
      bottomNavigationBar: SafeArea(
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.deepOrangeAccent,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Icon(
                        Icons.add_shopping_cart
                    ),
                    Text('Buy')
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Icon(
                        Icons.attach_money
                    ),
                    Text('Sell')
                  ],
                ),
              ),

            ],
          )
      ),
      endDrawer: RightDrawerWidget(),
    );
  }
}
