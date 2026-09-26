import 'package:flutter/material.dart';
import 'package:ui_deep_concepts/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                Padding(padding: EdgeInsets.zero),
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(5)
                  ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPGw4mjPJYoTzBu1pbTPUinRvF3CHpYPZnKwEX76hJkZEdPpLOvP5_hluk&s=10'),
                    ),
                    accountName: Text('Abbas Khan') ,
                    accountEmail: Text('abbaskhann414@gmail.com')
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: (){
                    Navigator.pushNamed(context, HomeScreen.id);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.calendar_month),
                  title: Text('Screen 2'),
                  onTap: (){
                    Navigator.pushNamed(context, ScreenTwo.id);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.login_outlined),
                  title: Text('Logout'),
                  onTap: (){
                    Navigator.pushNamed(context, ScreenTwo.id);
                  },
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Center(
              child: Text('Navigation Drawer',
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),
            backgroundColor: Colors.purple,
          ),
          body:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: (){

                  Navigator.pushNamed(context, ScreenTwo.id);

                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context)=> ScreenTwo()));

                },
                child: Center(
                    child: Text('Visit Screen 2')),
              )
            ],
          ),

        ),
    );

  }
}
