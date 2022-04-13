import 'package:flutter/material.dart';

class SkillType {
  String title;
  List<Skills> skills = [];
  SkillType({required this.title, required this.skills});
}

class Skills {
  String skill;
  AssetImage image;
  Skills({required this.skill, required this.image});
}
