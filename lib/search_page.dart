import 'package:flutter/material.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
            appBar: AppBar(
              title: Text('drawer'),
              actions: [PopupMenuButton(itemBuilder: (context) => [

                PopupMenuItem(child: Text('help'),
                  onTap: (){

                  },
                )
              ])],
              backgroundColor: Colors.blueGrey,

            ),
    drawer: Drawer(
              child:  ListView(
                children: [
                  DrawerHeader(
                      child:Center(child: Text('side menu '))
                  ),
                  ListTile(
                    leading:Icon(Icons.home) ,
                    title: Text('home'),
                    subtitle: Text('this is the page home'),
                    onTap: (){

                      print('page home');
                    },
                  ),
                   ListTile(
                    leading:Icon(Icons.account_balance) ,
                    title: Text(' account'),
                    subtitle: Text('this is the page account'),
                    onTap: (
                        ){
                      print('page account');
                    },
                  ),
                  ListTile(
                    leading:Icon(Icons.settings) ,
                    title: Text(' settings'),
                    subtitle: Text('this is the page settings'),
                    onTap: (
                        ){
                      print('page settings');
                    },
                  ),
                  ListTile(
                    leading:Icon(Icons.search) ,
                    title: Text('search'),
                    subtitle: Text('this is the page serach'),
                    onTap: (
                        ){
                      print('page search');
                    },
                   ),
                ],
            ),
            ),
    );
  }
}