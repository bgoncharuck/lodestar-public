import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lodestar/app_impl/material/config/theme.dart';
import 'package:lodestar/resources/painters.dart';

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
                          clipper: const WaveClipper(),
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

class _ShipWidget extends StatelessWidget {
  const _ShipWidget({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          right: 64.0,
          bottom: double.infinity,
        ),
        child: Transform.scale(
          scale: 0.6,
          child: Transform.rotate(
            angle: -pi / 34,
            child: CustomPaint(
              isComplex: true,
              key: const Key('shipPainter'),
              size: const Size(266.149, 266.149),
              painter: ShipPainter(),
            ),
          ),
        ),
      );
}
