import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

  _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 6),
      color: primaryBlack,
      height: 420,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 28,
                    height: 2,
                    color: secondaryColor,
                  ),
                  const SizedBox(width: 14),
                  const Text(
                    'HELLO THERE',
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 12,
                      letterSpacing: 13,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 21,
              ),
              const Text(
                'I am Varun Cuntoor',
                style: TextStyle(
                  color: whiteText,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: const [
                  Image(image: AssetImage('assets/images/flutter_hero.png')),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Developer',
                    style: TextStyle(
                      color: whiteText,
                      fontSize: 30,
                    ),
                  )
                ],
              )
            ],
          ),
          const Expanded(
              child: Image(image: AssetImage('assets/images/hero.png'))),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: (() => _launchUrl(
                    'https://github.com/varunization4123?tab=repositories')),
                child: const Text(
                  'Latest Projects',
                  style: TextStyle(color: whiteText),
                ),
                style: OutlinedButton.styleFrom(
                  primary: whiteText, side: const BorderSide(color: whiteText),
                  minimumSize: const Size(130, 40),
                  // minimumSize: ,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              OutlinedButton(
                onPressed: (() => _launchUrl(
                    'https://drive.google.com/uc?export=download&id=1P-O-_QBbYthP8hLtlWPFGCAC2W9KNEP3')),
                child: const Text(
                  'Resume',
                  style: TextStyle(color: whiteText),
                ),
                style: OutlinedButton.styleFrom(
                  primary: whiteText, side: BorderSide(color: whiteText),
                  minimumSize: const Size(130, 40),
                  // minimumSize: ,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
