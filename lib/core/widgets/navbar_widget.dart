import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/config.dart';
import '../core.dart';

// import 'package:flutter/material.dart';

class MoneyMingleNavBar extends StatelessWidget {
  const MoneyMingleNavBar({
    super.key,
    required this.tabs,
  });

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(
      context,
    ).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Color(
          0xff212121,
        ).withOpacity(
          0.3,
        ),
        borderRadius: BorderRadius.circular(
          100,
        ),
      ),
      clipBehavior: Clip.hardEdge,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 15,
          sigmaY: 15,
          tileMode: TileMode.mirror,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ShaderMask(
                shaderCallback: (bounds) =>
                    Constant.gradiantFill().createShader(bounds),
                child: Text(
                  'MoneyMingle',
                  style: CustomFontStyle.title40,
                ),
              ),
              Visibility(
                visible: !(screenwidth <= 1084),
                child: Row(
                  children: List.generate(
                    tabs.length,
                    (index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          right: screenwidth <= 1124 && index != tabs.length - 1
                              ? 30
                              : index != tabs.length - 1
                                  ? 50
                                  : 0,
                        ),
                        child: Text(
                          tabs[index],
                          style: CustomFontStyle.label,
                        ),
                      );
                    },
                  ),
                ),
              ),
              Visibility(
                visible: !(screenwidth <= 1084),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      100,
                    ),
                    color: ColorsTheme.primaryColor,
                  ),
                  child: Text(
                    'Download App',
                    style: CustomFontStyle.label2,
                  ),
                ),
              ),
              // Visibility(
              //   visible: screenwidth <= 1084,
              //   child: SvgPicture.string(
              //     SvgConfig.menu,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
