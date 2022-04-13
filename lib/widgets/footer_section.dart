import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      height: 96,
      color: primaryBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/footerimage1.png'),
                const SizedBox(
                  width: 12,
                ),
                Image.asset('assets/images/footerimage2.png'),
                const SizedBox(
                  width: 12,
                ),
                Image.asset('assets/images/footerimage3.png'),
                const SizedBox(
                  width: 12,
                ),
                Image.asset('assets/images/footerimage4.png'),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Expanded(
              child: Text(
            '© Varun Cuntoor 2021',
            style: TextStyle(color: whiteText),
          ))
        ],
      ),
    );
  }
}
