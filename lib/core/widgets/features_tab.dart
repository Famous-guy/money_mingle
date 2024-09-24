import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moneymingle_web/core/core.dart';

import '../../config/config.dart';

class FeaturesTab extends StatelessWidget {
  const FeaturesTab({
    super.key,
    required this.image,
    required this.title,
    required this.label,
  });
  final String image;
  final String title;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(
            14.0,
          ),
          decoration: BoxDecoration(
            color: ColorsTheme.primary80,
            borderRadius: BorderRadius.circular(
              12.0,
            ),
          ),
          child: SvgPicture.string(
            image,
          ),
        ),
        24.he,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: CustomFontStyle.title40.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              10.ve,
              Text(
                label,
                style: CustomFontStyle.label.copyWith(
                  color: ColorsTheme.grey50,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
