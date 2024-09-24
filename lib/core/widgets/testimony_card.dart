import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/config.dart';
import '../core.dart';

class TestimonialCard extends StatelessWidget {
  TestimonialCard({
    super.key,
    this.name,
    this.testimony,
    this.image,
    this.isBusiness,
  });
  final bool? isBusiness;
  final String? name;
  final String? testimony;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: isBusiness ?? false ? 252 : 232,
      width: isBusiness ?? false ? 374 : 354,
      decoration: BoxDecoration(
        gradient: isBusiness ?? false ? Constant.gradiantFill() : null,
        color: isBusiness ?? false
            ? null
            : ColorsTheme.primaryWhite50.withOpacity(
                0.05,
              ),
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      padding: const EdgeInsets.all(
        24,
      ),
      child: Column(
        children: [
          isBusiness ?? false ? 10.ve : 0.ve,
          Text(
            testimony ??
                '“Money Mingle gave us valuable product insights within hours. Our social following has grown exponentially since using the platform”',
            textAlign: TextAlign.center,
            style: CustomFontStyle.label.copyWith(
                height: 1.2,
                color: ColorsTheme.primaryWhite.withOpacity(
                  isBusiness ?? false ? 0.8 : 0.6,
                )), // Your custom style for the text
          ),
          isBusiness ?? false ? 18.ve : 20.ve,
          Divider(
            thickness: 1,
            color: ColorsTheme.primaryWhite.withOpacity(
              0.1,
            ),
          ),
          isBusiness ?? false ? 24.ve : 18.ve,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                        image ?? PngConfig.avartar,
                      ),
                    ),
                  ),
                  12.he,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name ?? 'Bemra Ramaswami',
                        style: CustomFontStyle.label.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ), // Your custom style for the text
                      ),
                      Text(
                        isBusiness ?? false ? 'Business owner' : 'Hustler',
                        style: CustomFontStyle.label.copyWith(
                          color: Color(
                            isBusiness ?? false ? 0xffFAFAFA : 0xffC5CCD1,
                          ).withOpacity(
                            0.7,
                          ),
                          fontSize: 14,
                        ), // Your custom style for the text
                      ),
                    ],
                  ),
                ],
              ),
              SvgPicture.string(
                SvgConfig.quote,
                color: isBusiness ?? false
                    ? null
                    : ColorsTheme.primaryWhite.withOpacity(
                        0.1,
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
