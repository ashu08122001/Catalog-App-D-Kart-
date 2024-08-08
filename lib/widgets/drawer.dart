import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Drawer(
     elevation: 0,
     child: Container(
       color: Color(0xff0252330),
       child: ListView(
         padding: EdgeInsets.zero,
         children: [

             DrawerHeader(
               padding: EdgeInsets.zero,

                 child: UserAccountsDrawerHeader(
                   margin: EdgeInsets.zero,
               accountName: Text("Ashwani Yadav", style: TextStyle(fontWeight: FontWeight.bold),),
               accountEmail: Text("aswani.k08122001@gmail.com"),
               decoration: BoxDecoration(color: Color(0xff0252330)),
               currentAccountPicture: CircleAvatar(
                 backgroundImage: AssetImage('assets/images/profile.png'),
               ),
             )),
           ListTile(
             leading: Icon(
               CupertinoIcons.home,
               color: Colors.white,
             ),
             title: Text('Home',style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),

           ),
           ListTile(
             leading: Icon(
               CupertinoIcons.profile_circled,
               color: Colors.white,
             ),
             title: Text('Profile',style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),


           ),
           ListTile(
             leading: Icon(
               CupertinoIcons.gift,
               color: Colors.white,
             ),
             title: Text('Offers',style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),

           ),
           ListTile(
             leading: Icon(
               CupertinoIcons.shopping_cart,
               color: Colors.white,
             ),
             title: Text('Cart',style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),

           ),
           ListTile(
             leading: Icon(
               CupertinoIcons.person_alt,
               color: Colors.white,
             ),
             title: Text('About',style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),

           )


         ],
       ),
     ),
   );
  }

}