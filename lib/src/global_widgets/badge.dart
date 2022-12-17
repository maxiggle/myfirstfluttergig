import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Badge extends StatelessWidget {
  final Widget child;
  final int number;
  final bool showNumber;
  final bool hide;

  const Badge({
    Key? key,
    required this.child,
    this.number = 0,
    this.showNumber = true,
    this.hide = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        if (!hide && number > 0)
          PositionedDirectional(
            end: showNumber ? -4 : -1,
            top: showNumber ? -4 : -1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              width: showNumber ? 14 : 10,
              height: showNumber ? 14 : 10,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: showNumber
                  ? Center(
                      child: FittedBox(
                        child: Text(
                          number.toString(),
                          style: GoogleFonts.inter().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 8,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          )
      ],
    );
  }
}
