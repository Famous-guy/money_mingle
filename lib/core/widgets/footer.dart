import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneymingle_web/core/core.dart';

import '../../config/config.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.tabs,
    required this.socials,
  });

  final List<String> tabs;
  final List<String> socials;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
      ),
      child: Column(
        children: [
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 550,
              ),
              child: Column(
                children: [
                  Image.asset(
                    PngConfig.logo,
                    height: 50,
                    width: 296,
                  ),
                  16.ve,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.string(
                        SvgConfig.appleStore,
                      ),
                      20.he,
                      SvgPicture.string(
                        SvgConfig.playstoreLogo,
                      ),
                    ],
                  ),
                  40.ve,
                  Wrap(
                    runAlignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: List.generate(
                      tabs.length,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            right: index != tabs.length - 1 ? 48 : 0,
                          ),
                          child: Text(
                            tabs[index],
                            style: CustomFontStyle.label.copyWith(
                              color: Color(
                                0xff646161,
                              ),
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  40.ve,
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      24,
                      2,
                      7,
                      2,
                    ),
                    decoration: BoxDecoration(
                      color: ColorsTheme.primary100,
                      border: Border.all(
                        color: Color(
                          0xff949494,
                        ).withOpacity(
                          0.5,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(
                        100,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextFormField(
                            style: CustomFontStyle.label.copyWith(
                              color: ColorsTheme.grey50,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  'Enter email to subscribe to newsletter',
                              hintStyle: CustomFontStyle.label.copyWith(
                                color: ColorsTheme.grey50,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            gradient: Constant.gradiantFill(),
                            borderRadius: BorderRadius.circular(
                              24,
                            ),
                          ),
                          child: Text(
                            'Subscribe',
                            style: CustomFontStyle.label2.copyWith(
                              color: ColorsTheme.primary100,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          40.ve,
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 850,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      socials.length,
                      (index) {
                        final social = socials[index];
                        return Container(
                          margin: EdgeInsets.only(
                            right: index != socials.length - 1 ? 40 : 0,
                          ),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: ColorsTheme.primary80,
                            borderRadius: BorderRadius.circular(
                              100,
                            ),
                          ),
                          child: Center(
                            child: SvgPicture.string(
                              social,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  20.ve,
                  Text(
                    'Privacy Policy   |   Terms & Condition   |   Cookie Notice   |   Copyright Policy   |   Data Policy    ',
                    textAlign: TextAlign.center,
                    style: CustomFontStyle.label.copyWith(
                      color: Color(
                        0xff646060,
                      ),
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
          ),
          20.ve,
          Center(
            child: Text(
              '© 2024 Design Moneymingle. All rights reserved.',
              style: CustomFontStyle.label.copyWith(
                color: Color(
                  0xff646060,
                ),
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
