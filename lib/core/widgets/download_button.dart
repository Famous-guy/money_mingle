import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moneymingle_web/core/core.dart';

import '../../config/config.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({
    super.key,
    this.logo,
    this.logoText,
    this.downloadLogoText, this.isSmall,
  });
  final bool? isSmall;
  // final bool? isPlaystore;
  final String? logo;
  final String? logoText;
  final String? downloadLogoText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.92,
        vertical: 9.59,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: ColorsTheme.grey1,
        ),
         color: (isSmall ?? false) ? ColorsTheme.black :null,
        
        borderRadius: BorderRadius.circular(
          7,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.string(
            logo ?? SvgConfig.apple,
            // height:  (isSmall ?? false) && (isPlaystore ?? false) ? 27.27 : (isSmall ?? false) ? 21.41 : null,
            // width: (isSmall ?? false) && (isPlaystore ?? false) ? 30.48 : (isSmall ?? false) ? 26.31 : null,
          ),
          7.44.he,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.string(
                logoText ?? SvgConfig.appStoreDownloadText,
              ),
              3.29.ve,
              SvgPicture.string(
                downloadLogoText ?? SvgConfig.appStoreText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
