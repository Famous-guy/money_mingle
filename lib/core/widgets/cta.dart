import 'package:flutter/material.dart';

import '../../config/config.dart';
import '../core.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 406,
      padding: EdgeInsets.symmetric(
        horizontal: 88,
        vertical: 97.5,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: [
            0,
            0.39,
            1,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(
              0xff000E00,
            ),
            Color(
              0xff003100,
            ),
            Color(
              0xff007400,
            ),
          ], // Define your gradient colors here
          // tileMode: TileMode.mirror,
        ),
      ),
      child: Container(
        height: 406,
        decoration: BoxDecoration(
          gradient: Constant.gradiantFill(),
          borderRadius: BorderRadius.circular(
            24,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              top: 0,
              child: Image.asset(
                PngConfig.line,
              ),
            ),
            Positioned(
              top: 121,
              left: 54,
              child: SizedBox(
                width: 566,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Join thousands of users making real money or boosting their businesses with Money Mingle!',
                      style: CustomFontStyle.title40.copyWith(
                        fontSize: 32,
                        height: 1.2,
                      ),
                    ),
                    24.ve,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        DownloadButton(
                          logo: SvgConfig.playStore,
                          downloadLogoText: SvgConfig.playStoreText,
                          logoText: SvgConfig.playstoreGetitText,
                          isSmall: true,
                        ),
                        16.he,
                        DownloadButton(
                          isSmall: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 11.54,
              child: Image.asset(
                PngConfig.taskon,
                height: 369.78,
                width: 582.9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
