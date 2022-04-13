import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/models/projects_list.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final AssetImage image;
  final int indice;
  const ProjectCard(
      {Key? key,
      required this.title,
      required this.image,
      required this.indice})
      : super(key: key);

  void _launchUrl() async {
    String url = projects[indice].url;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      width: 340,
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.all(36),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(94, 0, 0, 0),
          blurRadius: 30.0,
        )
      ], borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 12,
          ),
          Image(image: image),
          const SizedBox(
            height: 26,
          ),
          const Text(
            'Tech stack',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: const EdgeInsets.all(2),
            height: 64,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: projects[indice].stack.length,
                  itemBuilder: (context, index) {
                    return Image(
                      image: projects[indice].stack[index].stack,
                      height: 96,
                    );
                  },
                ),
                ElevatedButton(
                  onPressed: _launchUrl,
                  child: Row(
                    children: [
                      Image.asset('assets/images/githublight.png'),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text('Code'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
