import 'package:flutter/material.dart';

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
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [

                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                  ),

                    accountName: Text('Abbas Khan'),
                    accountEmail: Text('abbaskhann414'),
                    currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCEq19xSvqM2DyipP4QXISQafP5qoU1Vd7kg5fP4-vEkWfMjfRItQn_nDo&s=10'),
            ),
                ),
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home_outlined),
                  onTap: (){
                  },
                ),
                ListTile(
                  title: Text('Setting'),
                  leading: Icon(Icons.settings),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('Log Out'),
                  leading: Icon(Icons.logout),
                  onTap: (){},
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text(
              'Whatsapp',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.teal,
            bottom: TabBar(
              tabs: [
                Tab(child: Icon(Icons.camera_alt_outlined, color: Colors.white),),
                Tab(child: Text('Chats', style: TextStyle(color: Colors.white)),),
                Tab(child: Text('Status', style: TextStyle(color: Colors.white)),),
                Tab(child: Text('Calls', style: TextStyle(color: Colors.white)),),
              ],
            ),
            actions: [
              Icon(Icons.search, color: Colors.white),
              SizedBox(width: 10),
              PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined,color: Colors.white,),
                  itemBuilder: (Context,) =>[
                    PopupMenuItem(
                        value: '1',
                        child: Text('New Group')
                    ),
                    PopupMenuItem(
                        value: '2',
                        child: Text('Settings')
                    ),
                    PopupMenuItem(
                        value: '3',
                        child: Text('Logout')
                    )
                  ]
              ),
              SizedBox(width: 30),
            ],
          ),
          body: TabBarView(
            children: [
              Icon(Icons.camera_enhance_outlined),
              ListView.builder(
                itemCount: 10,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaMIjrTnnfXN0jyEuZ6rlnhWXJGQeBKg28hgR0BrXygfOlFbcibbxv9hc&s=10'),
                      ),
                      title: Text('John Wick'),
                      subtitle: Text('Where is my Dog?'),
                      trailing: Text('11:59 PM'),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 3,color: Colors.green),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green,
                              blurRadius: 5,
                              spreadRadius: 4
                            )
                          ]
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c78bc3fc-9f08-47ca-81ae-d89055c7ec49/da68gj7-78833f04-aaaa-4b36-b0dc-eac111f271f1.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiIvZi9jNzhiYzNmYy05ZjA4LTQ3Y2EtODFhZS1kODkwNTVjN2VjNDkvZGE2OGdqNy03ODgzM2YwNC1hYWFhLTRiMzYtYjBkYy1lYWMxMTFmMjcxZjEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.p4yzCfM3vQ8PRa1fRna9t7YE052budFJTNSlgWsKf-Y'),
                        ),
                      ),
                      title: Text('You'),
                      subtitle: Text('Uploaded at 1:23 PM'),
                      trailing: Icon(Icons.visibility_sharp),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaMIjrTnnfXN0jyEuZ6rlnhWXJGQeBKg28hgR0BrXygfOlFbcibbxv9hc&s=10'),
                      ),
                      title: Text('John Wick'),
                      subtitle: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(Icons.call_missed_outlined,color: Colors.red,),
                      ),
                      trailing: Icon(Icons.video_call_outlined),

                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
