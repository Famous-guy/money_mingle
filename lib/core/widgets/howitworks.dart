import 'package:flutter/material.dart';
import 'package:moneymingle_web/core/core.dart';

import '../../config/config.dart';


class HowItWorks extends StatelessWidget {
  const HowItWorks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 80.0,
      ),
      child: Column(
        children: [
          Text(
            'Why Choose MoneyMingle?',
            style: CustomFontStyle.title50.copyWith(
              fontSize: 40,
            ),
          ),
          20.he,
          Text(
            'Make Every Minute Count. Join thousands of users earning real cash.',
            style: CustomFontStyle.label4.copyWith(
              color: ColorsTheme.grey40,
            ),
          ),
          64.ve,
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment:
                  CrossAxisAlignment.stretch, // Ensures equal height
              children: [
                Expanded(
                  // This makes the first container take up the remaining width
                  child: FirstCard(),
                ),
                48.he,
                // Second container taking its natural width
                SecondCard(),
              ],
            ),
          ),
          64.ve,
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment:
                  CrossAxisAlignment.stretch, // Ensures equal height
              children: [
                SecondCard(
                  image: SvgConfig.coin,
                  label:
                      'Enjoy the gamified experience, complete daily challenges, and compete on leaderboards for extra rewards.',
                  title: 'Fun and Competitive',
                ),
                48.he,
                // Second container taking its natural width
                Expanded(
                  // This makes the first container take up the remaining width
                  child: FirstCard(
                    title: ShaderMask(
                      shaderCallback: (bounds) =>
                          Constant.gradiantFill().createShader(bounds),
                      child: Text(
                        'Instant Payments',
                        style: CustomFontStyle.title50.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    label: Text(
                      'No waiting. Cash out instantly with flexible payout options.',
                      style: CustomFontStyle.label.copyWith(
                        color: ColorsTheme.grey50,
                      ),
                    ),
                    child: Image.asset(
                      PngConfig.paySupport,
                      width: 368.14,
                      height: 299.1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
