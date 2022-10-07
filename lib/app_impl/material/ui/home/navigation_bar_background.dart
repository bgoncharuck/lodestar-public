import 'dart:math';
import 'package:flutter/material.dart';
import 'package:jovial_svg/jovial_svg.dart';
import 'package:lodestar/resources/svgs.dart';
import 'package:lodestar/app_impl/material/config/theme.dart';

const _wavesHeight = 180.0;
const wavesAndShipHeight = _wavesHeight + 32.0;
const _clipperHeight = 140.0;

class NavigationBarBackground extends StatelessWidget {
  const NavigationBarBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: wavesAndShipHeight,
      child: Stack(
        children: const [
          _WaterWidget(key: Key('waterWidget')),

          /// this ship widget can eat up to 15 FPS
          /// and it is already optimized
          /// I don't know what's wrong with it
          _ShipWidget(key: Key('shipWidget')),
        ],
      ),
    );
  }
}

class _WaterWidget extends StatelessWidget {
  const _WaterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: _wavesHeight,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                height: _wavesHeight,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Transform.rotate(
                        angle: pi,
                        child: ClipPath(
                          clipper: const _WaveClipper(),
                          child: Container(
                            height: _clipperHeight,
                            color: theme.panelsColor,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: _wavesHeight - _clipperHeight + 1.0,
                        color: theme.panelsColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WaveClipper extends CustomClipper<Path> {
  const _WaveClipper();
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.7);

    final List<List<Offset>> dots = [
      [
        Offset(size.width * 0.1, size.height * 0.5),
        Offset(size.width * 0.15, size.height * 0.7),
      ],
      [
        Offset(size.width * 0.17, size.height * 0.6),
        Offset(size.width * 0.3, size.height * 0.8),
      ],
      [
        Offset(size.width * 0.4, size.height * 0.35),
        Offset(size.width * 0.5, size.height * 0.5),
      ],
      [
        Offset(size.width * 0.6, size.height * 0.2),
        Offset(size.width * 0.7, size.height * 0.4),
      ],
      [
        Offset(size.width * 0.8, size.height * 0.28),
        Offset(size.width * 0.81, size.height * 0.5),
      ],
      [
        Offset(size.width * 0.9, size.height * 0.37),
        Offset(size.width, size.height * 0.4),
      ],
    ];
    for (final dot in dots) {
      path.quadraticBezierTo(
        dot[0].dx,
        dot[0].dy,
        dot[1].dx,
        dot[1].dy,
      );
    }

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class _ShipWidget extends StatelessWidget {
  const _ShipWidget({super.key});

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(
            right: 64.0,
          ),
          child: Transform.rotate(
            angle: -pi / 34,
            child: const _PreloadedShip(
              key: Key('preloadedShip'),
            ),
          ),
        ),
      );
}

class _PreloadedShip extends StatelessWidget {
  const _PreloadedShip({super.key});

  @override
  Widget build(BuildContext context) => ScalableImageWidget(
        si: shipSVG,
        scale: 0.6,
      );
}
