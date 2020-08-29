import 'package:blogapp/page/create_post.dart';
import 'package:flutter/material.dart';

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        child: Text("Home Page"),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context)=> CreatePost()
          ));
        },
      ),

      bottomNavigationBar: BottomAppBar(

      ),
    );
  }
}
