import 'package:flutter/widgets.dart';

class BackgroundLayer extends StatelessWidget {
  const BackgroundLayer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('assets/img_rectangle_1.png')),
      ),
      child: child,
    );
  }
}
