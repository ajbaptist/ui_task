import 'package:flutter/widgets.dart';

class BackgroundLayer extends StatelessWidget {
  const BackgroundLayer({super.key, required this.child, this.padding});

  final Widget child;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
            image: AssetImage('assets/img_rectangle_1.png')),
      ),
      child: SafeArea(child: child),
    );
  }
}
