import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Fragment/BalanceFragment.dart';
import 'Fragment/ContactFragment.dart';
import 'Fragment/EmailFragment.dart';
import 'Fragment/HomeFragment.dart';
import 'Fragment/PersonFragment.dart';
import 'Fragment/SearchFragment.dart';
import 'Fragment/SettingsFragment.dart';
import 'Fragment/AlarmFragment.dart';


main(){
  runApp(const MyApp()); // Application
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title:Text( "My App"),
            bottom: TabBar(
              isScrollable:true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: 'Home',),
                Tab(icon: Icon(Icons.search),text: 'search',),
                Tab(icon: Icon(Icons.settings),text: 'settings',),
                Tab(icon: Icon(Icons.email),text: 'email',),
                Tab(icon: Icon(Icons.contact_mail),text: 'contact',),
                Tab(icon: Icon(Icons.person),text: 'person',),
                Tab(icon: Icon(Icons.access_alarm),text: 'alarm',),
                Tab(icon: Icon(Icons.account_balance),text: 'balance',)
              ],
            ),
          ),
          body: TabBarView(
            children: [
                HomeFragment(),
                SearchFragment(),
                SettingsFragment(),
                EmailFragment(),
                ContactFragment(),
                PersonFragment(),
                AlarmFragment(),
                BlanceFragment()
            ],
          ),
        )
    );

  }
}