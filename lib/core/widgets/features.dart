import 'package:flutter/material.dart';
import 'package:flutter_seo/flutter_seo.dart';
import 'package:moneymingle_web/core/core.dart';

import '../../config/config.dart';

class Features extends StatelessWidget {
  const Features({
    super.key,
    required this.features,
  });

  final List<Map<String, dynamic>> features;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 120.5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: 505,
            child: Column(
              children: [
                Text(
                  'Reach More. Sell More.',
                  style: CustomFontStyle.title.copyWith(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                16.ve,
                Text(
                    'Upload tasks and get your brand seen by thousands. Create social buzz, grow your audience, and increase conversions. ',
                    style: CustomFontStyle.label.copyWith(
                      color: ColorsTheme.grey50,
                    ),
                    key: SeoKey(
                      TagType.h1,
                      text:
                          'Upload tasks and get your brand seen by thousands. Create social buzz, grow your audience, and increase conversions.',
                    )),
                40.ve,
                Column(
                  children: features.map(
                    (feature) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          bottom: 32.0,
                        ),
                        child: FeaturesTab(
                          image: feature['icon'],
                          title: feature['title'],
                          label: feature['label'],
                        ),
                      );
                    },
                  ).toList(),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 64.7,
              horizontal: 51.5,
            ),
            decoration: BoxDecoration(
              color: ColorsTheme.primary80,
              border: Border.all(
                color: ColorsTheme.black.withOpacity(
                  0.06,
                ),
              ),
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 35,
              ),
              decoration: BoxDecoration(
                color: ColorsTheme.primary70,
                borderRadius: BorderRadius.circular(
                  22.15,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sales report',
                    style: CustomFontStyle.label2.copyWith(
                        fontSize: 17.72,
                        color: Color(
                          0xffF9F9F9,
                        )),
                  ),
                  8.23.ve,
                  Text(
                    '\$ 128,000 ',
                    style: CustomFontStyle.title.copyWith(
                      fontSize: 28,
                    ),
                  ),
                  5.66.ve,
                  Text(
                    'Increase of 500% from last month',
                    style: CustomFontStyle.label2.copyWith(
                      color: Color(
                        0xffF0F0F0,
                      ),
                    ),
                  ),
                  26.58.ve,
                  Image.asset(
                    PngConfig.graph,
                    width: 362.22,
                    height: 239.26,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
