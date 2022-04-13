import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryBlack,
      padding: const EdgeInsets.only(bottom: 64),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 6,
                ),
                height: 72,
                color: const Color(0xffeeeeee),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 6),
                child: Image.asset('assets/images/aboutimage.png'),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 6, top: 36),
            child: const Text(
              "As a self-taught developer, I`ve been learning the above skills over the\nlast couple of years. Do click on the icons to see projects or articles I`ve produced\nusing that technology.",
              style: TextStyle(color: whiteText, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
