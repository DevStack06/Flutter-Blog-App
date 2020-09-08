import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddBlog extends StatefulWidget {
  AddBlog({Key key}) : super(key: key);

  @override
  _AddBlogState createState() => _AddBlogState();
}

class _AddBlogState extends State<AddBlog> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  IconData icon = Icons.image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white54,
        leading: IconButton(icon: Icon(Icons.clear), onPressed: null),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                onPressed: null,
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.teal, fontSize: 20),
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            textField(),
            textField2(),
          ],
        ),
      ),
    );
  }

  Widget textField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        // controller: _name,
        validator: (value) {
          if (value.isEmpty) return "Name can't be empty";

          return null;
        },
        maxLength: 100,
        maxLines: null,
        decoration: InputDecoration(
          prefixIcon: IconButton(
              icon: Icon(
                icon,
                color: Colors.green,
              ),
              onPressed: takePhoto),
          border: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.teal,
          )),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.orange,
            width: 2,
          )),
          labelText: "Cover Image and Title",
        ),
      ),
    );
  }

  Widget textField2() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        // controller: _name,
        validator: (value) {
          if (value.isEmpty) return "Name can't be empty";

          return null;
        },
        // maxLength: 100,
        maxLines: null,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.teal,
          )),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.orange,
            width: 2,
          )),
          labelText: "body",
        ),
      ),
    );
  }

  void takePhoto() async {
    final pickedFile = await _picker.getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      _imageFile = pickedFile;
      icon = Icons.check_box;
    });
  }
}
