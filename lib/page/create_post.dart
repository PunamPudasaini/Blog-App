import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Post"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.save
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10,),

                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.black,
                    ),
                  ),

                Form(
                  child: Column(
                    children: <Widget>[
                      TextFormField(decoration: InputDecoration(hintText: "Title"),),
                      TextFormField(
                        maxLines: 10,
                        decoration: InputDecoration(hintText: "Content"),
                      )
                    ],
                  ),
                )

              ],
            ),
          ),

        ),
      ),
    );
  }
}
