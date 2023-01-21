import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'components/page.dart';
import 'components/logos.dart';

class Responsibilities extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.7,
          child: PageView(
            controller: _controller,
            children: [
              page(context, 0),
              page(context, 1),
              page(context, 2),
            ],
          ),
        ),
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor: Colors.deepPurple,
            dotColor: Colors.deepPurple.shade100,
            dotHeight: 15,
            dotWidth: 15,
            spacing: 16,
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        logofield(),
      ],
    );
  }
}
