import 'package:flutter/material.dart';
import 'package:flutter_seo/flutter_seo.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moneymingle_web/core/core.dart';

import '../../config/config.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
    required this.radians,
  });

  final double radians;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 100.0,
      ),
      child: Column(
        children: [
          const HeroSectionText(),
          64.ve,
          Stack(
            children: [
              Center(
                child: Image.asset(
                  PngConfig.task,
                  width: 384,
                  height: 357,
                ),
              ),
              Positioned(
                top: 0,
                left: 220,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  decoration: Constant.coolMoneyMingleDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7.43,
                          vertical: 6.13,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            100,
                          ),
                          gradient: Constant.gradiantFill(),
                        ),
                        child: SvgPicture.string(
                          SvgConfig.upArrow,
                        ),
                      ),
                      12.he,
                      Text(
                        'Over 20k+ tasks',
                        style: CustomFontStyle.label.copyWith(
                          color: ColorsTheme.primaryWhite50,
                        ),
                         key: SeoKey(TagType.p, text: "Over 20k+ tasks"),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 90,
                left: 250,
                child: Transform.rotate(
                  angle: -6.08 * radians,
                  child: Container(
                     key: SeoKey(TagType.div,),
                    padding: const EdgeInsets.all(
                      24,
                    ),
                    decoration: Constant.coolMoneyMingleDecoration(
                      radius: BorderRadius.circular(
                        24,
                      ),
                      boxShadow: BoxShadow(
                        color: ColorsTheme.black.withOpacity(
                          0.15,
                        ),
                        blurRadius: 42.1,
                        spreadRadius: 0,
                        offset: const Offset(
                          20,
                          20,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Total Payout',
                              style: CustomFontStyle.label.copyWith(
                                color: ColorsTheme.grey50,
                              ),
                               key: SeoKey(TagType.p, text: "Total Payout",),
                            ),
                            3.95.he,
                            SvgPicture.string(
                              SvgConfig.dollar,
                            ),
                          ],
                        ),
                        12.ve,
                        Text(
                          '\$20.98M',
                          style: CustomFontStyle.title50.copyWith(
                            color: ColorsTheme.primaryWhite50,
                          ),
                           key: SeoKey(TagType.p, text: "\$20.98M"),
                        ),
                        24.ve,
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 7.43,
                                vertical: 6.13,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  100,
                                ),
                                gradient: Constant.gradiantFill(),
                              ),
                              child: SvgPicture.string(
                                SvgConfig.connector,
                              ),
                            ),
                            12.he,
                            Text(
                              '+234.45% weekly',
                              style: CustomFontStyle.label.copyWith(
                                color: ColorsTheme.primaryWhite50,
                              ),
                              key: SeoKey(TagType.p, text: "+234.45% weekly"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 200,
                top: 5,
                child: Container(
                  padding: const EdgeInsets.all(
                    24,
                  ),
                  decoration: Constant.coolMoneyMingleDecoration(
                    radius: BorderRadius.circular(
                      24,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Average earning ',
                            style: CustomFontStyle.label.copyWith(
                              color: ColorsTheme.grey50,
                            ),
                            key: SeoKey(TagType.p, text: "Average earning "),
                          ),
                          3.95.he,
                          SvgPicture.string(
                            SvgConfig.dollar,
                          ),
                        ],
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$25',
                              style: CustomFontStyle.title50.copyWith(
                                color: ColorsTheme.primaryWhite50,
                              ),
                            ),
                            TextSpan(
                              text: '/day',
                              style: CustomFontStyle.label4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 270,
                top: 180,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 6, 12, 6),
                  decoration: Constant.coolMoneyMingleDecoration(),
                  child: Row(
                    children: [
                      Image.asset(
                        PngConfig.guy,
                        width: 140,
                        height: 50,
                      ),
                      SvgPicture.string(
                        SvgConfig.heart,
                      ),
                      6.he,
                      Text(
                        '3M+',
                        style: CustomFontStyle.label2.copyWith(
                          color: ColorsTheme.primaryWhite50,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 240,
                right: 180,
                child: Image.asset(
                  PngConfig.money,
                  width: 80,
                  height: 60.62,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
