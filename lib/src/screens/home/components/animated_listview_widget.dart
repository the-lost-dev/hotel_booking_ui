
import 'package:flutter/material.dart';

class AnimatedListViewWidget extends StatefulWidget {
  const AnimatedListViewWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<AnimatedListViewWidget> createState() => _AnimatedListViewWidgetState();
}

class _AnimatedListViewWidgetState extends State<AnimatedListViewWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    )..forward();

    _scaleAnimation = Tween<double>(
      begin: 0.5,
      end: 1,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: widget.child,
    );
  }
}
