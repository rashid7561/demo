import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyDwUgUAjk1s-yJ0iw9g4y_tjrPhpxtR_Dg",
        appId: "1:574976729683:android:e855041f96c0bdc8049ca6",
        messagingSenderId: "574976729683",
        projectId: "demo55-25ba4",
    ));

  runApp(MaterialApp(
    darkTheme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: dfive(),

  ));
}
class dfive extends StatefulWidget {
  const dfive({super.key});

  @override
  State<dfive> createState() => _dfiveState();
  TextEditingController one =TextEditingController();
  TextEditingController two =TextEditingController();
}
addm() async{
  FirebaseFirestore.instance.collection('details').add({
    'one':one.text,
    'two':two.text,

  });

class _dfiveState extends State<dfive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(child:Icon(Icons.arrow_forward_ios) ,onPressed: (){
        showDialog(context: context, builder: (context){
          return AlertDialog(
            content: SizedBox(height: 180,
              child: Column(children: [
                Text("Enter Two Numbers",style: TextStyle(fontWeight: FontWeight.bold),),
                TextField(

                  decoration: InputDecoration(labelText: "First number"),),

                TextField(
                  decoration: InputDecoration(labelText: "Second number"),),

              ],),),
            actions: [
              TextButton(onPressed: (){

  }
                Navigator.pop(context);
              }, child: Text("Add",style: TextStyle(fontWeight: FontWeight.bold),),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.cyan),
                    foregroundColor: MaterialStateProperty.all(Colors.black)
                ),),],);

        });},),
    );

  }
};}
