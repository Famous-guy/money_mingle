import 'package:flutter/material.dart';
import 'package:moneymingle_web/core/core.dart';

import '../../config/config.dart';


class Testimonies extends StatelessWidget {
  const Testimonies({
    super.key,
    required this.testimonies,
  });

  final List<Map<String, dynamic>> testimonies;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 100,
      ),
      child: Column(
        children: [
          Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              style: CustomFontStyle.title.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ), // Your custom style for the text

              children: [
                const TextSpan(
                  text: 'Success ',
                ),
                WidgetSpan(
                  alignment: PlaceholderAlignment
                      .baseline, // Ensure alignment with baseline
                  baseline:
                      TextBaseline.alphabetic, // Align with alphabetic baseline
                  child: ShaderMask(
                    shaderCallback: (bounds) =>
                        Constant.gradiantFill().createShader(bounds),
                    child: Text(
                      'Stories ',
                      style: CustomFontStyle.title.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ), // Your custom style for the text
                    ),
                  ),
                ),
              ],
            ),
          ),
          52.ve,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: testimonies.map(
              (testimony) {
                // Check if the current testimony is the last one in the list
                bool isLast = testimony == testimonies.last;
                return Padding(
                  padding: EdgeInsets.only(
                    right: isLast
                        ? 0
                        : 24.0, // Apply padding only if not the last item
                  ),
                  child: TestimonialCard(
                    isBusiness: testimony['bool'],
                    image: testimony['icon'],
                    name: testimony['title'],
                    testimony: testimony['label'],
                  ),
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
