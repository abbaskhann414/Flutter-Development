import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Welcome to Screen 2',
              style: TextStyle(
                color: Colors.white,
              ),),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 30,
                    itemBuilder: (context, index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPGw4mjPJYoTzBu1pbTPUinRvF3CHpYPZnKwEX76hJkZEdPpLOvP5_hluk&s=10'),
                        ),
                        title: Text('Abbas Khan'),
                        subtitle: Text('Hey Abbas! How are you doing?'),
                        trailing: Text('2:53'),
                        onTap: (){},
                      );
                    },
                ),
              )
            ],
          ),
        ),
    );
  }
}
