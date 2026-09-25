import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Practicing Flutter Widgets')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            //List Tile widget

            // ListTile(
            //   leading: CircleAvatar(
            //     radius: 25,
            //     backgroundImage: NetworkImage(
            //       'https://png.pngtree.com/png-vector/20230831/ourmid/pngtree-man-avatar-image-for-profile-png-image_9197908.png',
            //     ),
            //   ),
            //   title: Text('Abbas Khan'),
            //   subtitle: Text('Hey Buddy, how are you?'),
            //   trailing: Text('2:25'),
            // ),

            //List view Builder

            // Expanded(
            //   flex: 4,
            //   child: ListView.builder(
            //     itemCount: 20,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         leading: CircleAvatar(
            //           radius: 25,
            //           backgroundImage: NetworkImage(
            //             'https://png.pngtree.com/png-vector/20230831/ourmid/pngtree-man-avatar-image-for-profile-png-image_9197908.png',
            //           ),
            //         ),
            //         title: Text('Abbas Khan'),
            //         subtitle: Text('Hey Buddy, how are you?'),
            //         trailing: Text('2:25'),
            //       );
            //     },
            //   ),
            // ),

            //Text Form Field Widget

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextFormField(
            //
            //     keyboardType: TextInputType.emailAddress,
            //     cursorColor: Colors.red,
            //     enabled: true,
            //
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       color: Colors.black,
            //     ),
            //
            //     decoration: InputDecoration(
            //
            //       hintText: 'Email',
            //       fillColor: Colors.grey.shade300,
            //       filled: true,
            //       icon: Icon(Icons.email),
            //       prefixIcon: Icon(Icons.alternate_email),
            //       enabledBorder: OutlineInputBorder(
            //         borderSide: BorderSide(
            //           color: Colors.grey
            //         )
            //       ),
            //       focusedBorder: OutlineInputBorder(
            //         borderSide: BorderSide(
            //           color: Colors.black,
            //           width: 2
            //         ),
            //         borderRadius: BorderRadius.circular(20)
            //       ),
            //       errorBorder: OutlineInputBorder(
            //         borderSide: BorderSide(
            //           color: Colors.red,
            //           width: 3,
            //         )
            //       )
            //     ),
            //
            //     onChanged: (value){
            //       print(value);
            //     },
            //
            //   ),
            // )

           // RichText Widget

            // Row(
            //   children: [
            //     SizedBox(width: 100,),
            //     RichText(
            //         text: TextSpan(
            //             text: 'Do not Have an Account ? ',
            //             style: Theme.of(context).textTheme.bodyLarge,
            //             children: [
            //               TextSpan(
            //                   text: 'Sign Up',
            //                   style: TextStyle(
            //                       fontSize: 18,
            //                     fontWeight: FontWeight.bold,
            //                     decoration:
            //                     TextDecoration.underline,
            //                   )
            //               ),
            //             ]
            //         )
            //     ),
            //   ],
            // ),

           // Circular Avatar

            // Divider(
            //   color: Colors.black,
            //   thickness: 10,
            // ),
            // SizedBox(
            //   height: 50,
            //   child: VerticalDivider(
            //     color: Colors.black,
            //   ),
            // ),
            // Center(
            //   child: CircleAvatar(
            //     radius: 100,
            //     backgroundColor: Colors.black,
            //     backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNw-pMuxs_9tMP0wGKjLkg_hcqIE4FBMWoXp9tHJhM37Sa2WYpT1Y_wsI&s=10'),
            //     child: Icon(Icons.person),
            //   ),
            // ),
            // SizedBox(
            //   height: 50,
            //   child: VerticalDivider(
            //     color: Colors.black,
            //   ),
            // ),
            // Divider(
            //   color: Colors.black,
            //   thickness: 10,
            // ),

            //Stack

            //  SizedBox(
            //    child: Stack(
            //      alignment: Alignment.center,
            //      children: [
            //        Container(
            //          height: 200,
            //          width: 200,
            //          color: Colors.green,
            //        ),
            //        Positioned(
            //            bottom: 50,
            //            child: Text('Abbas Khan')
            //        )
            //      ],
            //    ),
            //  ),
            // Stack(
            //   children: [
            //     Container(
            //       height: 200,
            //       width: 200,
            //       color: Colors.orange,
            //     ),
            //     Container(
            //       height: 180,
            //       width: 180,
            //       color: Colors.lightBlue,
            //     ),
            //     Container(
            //       height: 160,
            //       width: 160,
            //       color: Colors.black,
            //     )
            //   ],
            // )

            //Expanded and Row + Column and Container

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                  height: 200,
                  width: 90,
                  color: Colors.orange,
                  child: Center(
                    child: Text('Container 1'),
                  ),
                ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 200,
                    color: Colors.green,
                    child: Center(
                      child: Text('Container 2'),
                    ),

                  ),
                )
              ],
            ),
            Center(
              child: Container(
                height: 250,
                width: 250,
                padding: EdgeInsets.only(
                  bottom: 2
                ),
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                transform: Matrix4.rotationX(.1),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.black,
                    width: 1
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                      image: NetworkImage('https://images.pexels.com/photos/35494096/pexels-photo-35494096.jpeg')),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10
                    )
                  ]
                ),
                child: Center(
                    child: Text('Login',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white
                    ),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
