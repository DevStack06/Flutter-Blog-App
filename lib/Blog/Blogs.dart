import 'package:blogapp/CustumWidget/BlogCard.dart';
import 'package:blogapp/Model/SuperModel.dart';
import 'package:blogapp/Model/addBlogModels.dart';
import 'package:blogapp/NetworkHandler.dart';
import 'package:flutter/material.dart';

class Blogs extends StatefulWidget {
  Blogs({Key key, this.url}) : super(key: key);
  final String url;

  @override
  _BlogsState createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  NetworkHandler networkHandler = NetworkHandler();
  SuperModel superModel = SuperModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void fetchData() async {
    var response = await networkHandler.get(widget.url);
    superModel = SuperModel.fromJson(response);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => BlogCard(),
      itemCount: superModel.data.length,
    );
  }
}
