import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset(
            'assets/images/logo_image.svg'
          ),
          Text('Just Do It'),
          Text(''),
        ],
      )
    );
  }
}