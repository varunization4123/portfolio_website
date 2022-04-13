import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_website/widgets/about_me_section.dart';
import 'package:portfolio_website/widgets/footer_section.dart';
import 'package:portfolio_website/widgets/hero_section.dart';
import 'package:portfolio_website/widgets/navigation_bar.dart';
import 'package:portfolio_website/widgets/projects_section.dart';
import 'package:portfolio_website/widgets/skills_section.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          NavigationBarWidget(),
          HeroSection(),
          SkillsSection(),
          AboutMeSection(),
          ProjectSection(),
          FooterSection(),
        ],
      ),
    );
  }
}
