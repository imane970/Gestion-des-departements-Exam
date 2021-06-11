import 'package:depart_app/Pages/departements.dart';
import 'package:depart_app/Pages/home.dart';
import 'package:flutter/material.dart';
import 'header.dart';

class MyDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
            children : [
              MyDrawerHeaderWidget(),
              ListTile(
                leading: Icon(Icons.home,color: Colors.blue),
                trailing: Icon(Icons.arrow_right,color:Colors.blueGrey),
                title: Text("Home",style:TextStyle(fontSize: 18,color: Colors.blue)),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  HomePage()));
                },
              ),
              Divider(
                  color : Colors.blueAccent
              ),
              ListTile(
                leading: Icon(Icons.supervised_user_circle,color: Colors.blue),
                trailing: Icon(Icons.arrow_right,color:Colors.blue),
                title: Text("Départements",style:TextStyle(fontSize: 18,color: Colors.blue)),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  DepartementsPage()));
                },
              ),
              Divider(
                  color : Colors.blue
              ),
              ListTile(
                leading: Icon(Icons.supervised_user_circle,color: Colors.blue),
                trailing: Icon(Icons.arrow_right,color:Colors.blue),
                title: Text("Info",style:TextStyle(fontSize: 18,color: Colors.blue)),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  HomePage()));
                },
              ),
              // ListTile(
              //   leading: Icon(Icons.confirmation_number,color: Colors.red),
              //   trailing: Icon(Icons.arrow_right,color:Colors.red),
              //   title: Text("Counter",style:TextStyle(fontSize: 18,color: Colors.red)),
              //   onTap: (){
              //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  CounterState()));
              //   },
              // ),

              Divider(
                  color : Colors.blue
              ),
            ]
        )
    );
  }
}