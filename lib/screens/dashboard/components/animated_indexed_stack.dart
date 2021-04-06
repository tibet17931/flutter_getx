import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class AnimatedIndexedStack extends StatefulWidget {
  final int index;
  final List<Widget> children;
  final bool reverse = false;

  const AnimatedIndexedStack({
    Key key,
    this.index,
    this.children,
  }) : super(key: key);

  @override
  _AnimatedIndexedStackState createState() => _AnimatedIndexedStackState();
}

class _AnimatedIndexedStackState extends State<AnimatedIndexedStack>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  bool _reverse = false;
  int _index;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _index = widget.index;
    _controller.forward();
    super.initState();
  }

  @override
  void didUpdateWidget(AnimatedIndexedStack oldWidget) {
    if (_index < widget.index)
      setState(() => _reverse = false);
    else
      setState(() => _reverse = true);
    super.didUpdateWidget(oldWidget);
    if (widget.index != _index) {
      _controller.reverse().then((_) {
        setState(() => _index = widget.index);
        _controller.forward();
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageTransitionSwitcher(
        duration: const Duration(milliseconds: 300),
        reverse: _reverse,
        transitionBuilder: (child, animation, secondaryAnimation) =>
            SharedAxisTransition(
              child: child,
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
            ),
        child: widget.children[_index]);

    // SlideTransition(
    //     position: _animation,
    //     child: IndexedStack(
    //       index: _index,
    //       children: widget.children,
    //     ));
  }
}
