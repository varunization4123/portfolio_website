import 'package:flutter/cupertino.dart';

import 'project_model.dart';

List<Project> projects = [
  Project(
      title: 'Snake Game',
      url: 'https://github.com/varunization4123/snake_game',
      image: const AssetImage('assets/images/snakegame.png'),
      stack: [StackUsed(stack: AssetImage('assets/images/flutter.png'))]),
  Project(
      title: 'Instagram Clone',
      url: 'https://github.com/varunization4123/instagram',
      image: const AssetImage('assets/images/instaclone.png'),
      stack: [
        StackUsed(stack: AssetImage('assets/images/flutter.png')),
        StackUsed(stack: AssetImage('assets/images/firebase.png'))
      ]),
  Project(
      title: 'To-Do App',
      url: 'https://github.com/varunization4123/to_do_app',
      image: const AssetImage('assets/images/todo.png'),
      stack: [
        StackUsed(
          stack: AssetImage('assets/images/flutter.png'),
        )
      ]),
];
