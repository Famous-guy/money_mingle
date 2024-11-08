import 'package:flutter/material.dart';
import 'package:flutter_seo/flutter_seo.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/config.dart';
import '../core.dart';

class HeroSectionText extends StatelessWidget {
  const HeroSectionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width < 1166
                ? 0
                : size.width < 1344
                    ? 80
                    : 157.0,
          ),
          child: Column(
            children: [
              Center(
                child: CustomPaint(
                  painter: GradientBorderPainter(
                    strokeWidth: 1, // Thickness of the border
                    radius: 100, // Border radius
                    innerColor: ColorsTheme.primary200
                        .withOpacity(0.04), // Inner content color
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff23BD73),
                        Color(0xffA3F402),
                      ],
                      tileMode: TileMode.mirror,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                      4,
                      4,
                      12,
                      4,
                    ), // Padding inside the container
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 4.93),
                          decoration: BoxDecoration(
                            color: ColorsTheme.primaryWhite.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: SvgPicture.string(SvgConfig.stars),
                        ),
                        8.he, // Space between icon and text
                        Text(
                          'Maximize Your Time, Grow Your Income',
                          style: CustomFontStyle.label2.copyWith(
                            color: ColorsTheme.primaryWhite50,
                            fontWeight: FontWeight.w400,
                            fontSize: size.width < 442 ? 14 : null,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              12.ve,
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  style: CustomFontStyle.title.copyWith(
                    height: 1.2,
                    fontSize: size.width < 665
                        ? 30
                        : size.width < 714
                            ? 35
                            : size.width < 907
                                ? 40
                                : size.width < 1079
                                    ? 50
                                    : null,
                  ), // Your custom style for the text

                  children: [
                    const TextSpan(
                      text: 'Earn ',
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment
                          .baseline, // Ensure alignment with baseline
                      baseline: TextBaseline
                          .alphabetic, // Align with alphabetic baseline
                      child: ShaderMask(
                        shaderCallback: (bounds) =>
                            Constant.gradiantFill().createShader(bounds),
                        child: Text(
                          'Money ',
                          style: CustomFontStyle.title.copyWith(
                            height: 1.2,
                            fontSize: size.width < 714
                                ? 35
                                : size.width < 714
                                    ? 35
                                    : size.width < 907
                                        ? 40
                                        : size.width < 1079
                                            ? 50
                                            : null,
                          ), // Your custom style for the text
                        ),
                      ),
                    ),
                    const TextSpan(text: 'Doing What You Love and Help '),
                    WidgetSpan(
                      alignment: PlaceholderAlignment
                          .baseline, // Ensure alignment with baseline
                      baseline: TextBaseline
                          .alphabetic, // Align with alphabetic baseline
                      child: ShaderMask(
                        shaderCallback: (bounds) =>
                            Constant.gradiantFill().createShader(bounds),
                        child: Text(
                          'Businesses ',
                          style: CustomFontStyle.title.copyWith(
                            height: 1.2,
                            fontSize: size.width < 714
                                ? 35
                                : size.width < 714
                                    ? 35
                                    : size.width < 907
                                        ? 40
                                        : size.width < 1079
                                            ? 50
                                            : null,
                          ), // Your custom style for the text
                        ),
                      ),
                    ),
                    const TextSpan(
                      text: 'Thrive!',
                    ),
                  ],
                ),
              ),
              16.ve,
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width < 493
                      ? 0
                      : size.width < 547
                          ? 30
                          : size.width < 775
                              ? 60
                              : size.width < 873
                                  ? 100
                                  : size.width < 944
                                      ? 150
                                      : 183.0,
                ),
                child: Text(
                  'Make money in minutes with fun, easy tasks. From watching videos to taking surveys, Money Mingle lets you earn cash anytime, anywhere.',
                  textAlign: TextAlign.center,
                  style: CustomFontStyle.label.copyWith(
                    color: ColorsTheme.primaryWhite50,
                  ),
                  key: SeoKey(
                    TagType.h1,
                    text:
                        'Make money in minutes with fun, easy tasks. From watching videos to taking surveys, Money Mingle lets you earn cash anytime, anywhere.',
                  ),
                ),
              ),
            ],
          ),
        ),
        40.ve,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const DownloadButton(),
            12.he,
            DownloadButton(
              logo: SvgConfig.playStore,
              downloadLogoText: SvgConfig.playStoreText,
              logoText: SvgConfig.playstoreGetitText,
            ),
          ],
        ),
      ],
    );
  }
}
