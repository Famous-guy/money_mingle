import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moneymingle_web/core/core.dart';

import '../../config/config.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({
    super.key,
    this.logo,
    this.logoText,
    this.downloadLogoText,
  });
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
