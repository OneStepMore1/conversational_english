import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'wrapping.dart';
import 'viewport.dart';

class UnboundedCustomScrollView extends CustomScrollView {
  final bool _shrinkWrap;

  const UnboundedCustomScrollView({
    super.key,
    super.scrollDirection,
    super.reverse,
    super.controller,
    super.primary,
    super.physics,
    bool shrinkWrap = false,
    super.center,
    double anchor = 0.0,
    super.cacheExtent,
    super.slivers,
    super.semanticChildCount,
    super.dragStartBehavior,
  })  : _shrinkWrap = shrinkWrap,
        _anchor = anchor,
        super(
          shrinkWrap: false,
        );

  // [CustomScrollView] enforces constraints on [CustomScrollView.anchor], so
  // we need our own version.
  final double _anchor;

  @override
  double get anchor => _anchor;

  /// Build the viewport.
  @override
  @protected
  Widget buildViewport(
    BuildContext context,
    ViewportOffset offset,
    AxisDirection axisDirection,
    List<Widget> slivers,
  ) {
    if (_shrinkWrap) {
      return CustomShrinkWrappingViewport(
        axisDirection: axisDirection,
        offset: offset,
        slivers: slivers,
        cacheExtent: cacheExtent,
        center: center,
        anchor: anchor,
      );
    }
    return UnboundedViewport(
      axisDirection: axisDirection,
      offset: offset,
      slivers: slivers,
      cacheExtent: cacheExtent,
      center: center,
      anchor: anchor,
    );
  }
}
