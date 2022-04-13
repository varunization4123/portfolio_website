import 'package:flutter/cupertino.dart';

class Project {
  String title;
  String url;
  AssetImage image;
  List<StackUsed> stack = [];

  Project(
      {required this.title,
      required this.image,
      required this.stack,
      required this.url});
}

class StackUsed {
  AssetImage stack;

  StackUsed({
    required this.stack,
  });
}
