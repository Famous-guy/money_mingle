import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moneymingle_web/core/core.dart';

import '../../config/config.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({
    super.key,
    this.title,
    this.label,
    this.child,
  });
  final Widget? title;
  final Widget? label;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        48,
        48,
        48,
        0,
      ),
      decoration: BoxDecoration(
        color: title != null ? ColorsTheme.primary80 : null,
        border: title != null
            ? Border(
                left: BorderSide(
                  color: ColorsTheme.primary70,
                ),
                top: BorderSide(
                  color: ColorsTheme.primary70,
                ),
                bottom: BorderSide(
                  color: ColorsTheme.primary70,
                ),
              )
            : null, // If title is null, no border will be applied
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(
            title != null ? 0 : 20,
          ),
          topLeft: Radius.circular(
            20,
          ),
          bottomLeft: Radius.circular(
            20,
          ),
          bottomRight: Radius.circular(
            title != null ? 0 : 20,
          ),
        ),
        gradient: title != null ? null : Constant.gradiantFill(),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              width: title != null ? 365 : 316,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title ??
                      Text(
                        'Earn Cash with',
                        style: CustomFontStyle.title50.copyWith(
                          color: ColorsTheme.darkBlue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  Visibility(
                    visible: title == null,
                    child: Text(
                      'Minimal Effort',
                      style: CustomFontStyle.title50.copyWith(
                        color: ColorsTheme.darkBlue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  12.ve,
                  label ??
                      Text(
                        'Turn spare minutes into cash with quick, engaging tasks. No special skills required!',
                        style: CustomFontStyle.label.copyWith(
                          color: ColorsTheme.black.withOpacity(0.64),
                        ),
                      ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: -45,
            child: child ??
                SizedBox(
                  width: 486,
                  height: 352, // Define a fixed height for the Stack
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          PngConfig.wallet,
                          width: 376.95,
                          height: 352,
                        ),
                      ),
                      Positioned(
                        top: 154,
                        left: 0,
                        child: SizedBox(
                          width: 200, // Define a width that suits your design
                          child: Column(
                            children: [
                              detailsCard(),
                              SizedBox(height: 5), // Use SizedBox for spacing
                              detailsCard(
                                amount: '+\$200',
                                image: PngConfig.pay,
                              ),
                            ],
                          ),
                        ),
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

class SecondCard extends StatelessWidget {
  const SecondCard({
    super.key,
    this.image,
    this.title,
    this.label,
  });
  final String? image;
  final String? title;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.symmetric(
        horizontal: 36.0,
        vertical: 48,
      ),
      width: 442, // The width of this container remains based on its content
      decoration: BoxDecoration(
        color: ColorsTheme.primaryWhite50.withOpacity(0.05),
        border: Border.all(
          width: 1,
          color: ColorsTheme.primary90,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: image != null
                ? EdgeInsets.symmetric(
                    vertical: 33.5,
                    horizontal: 27.5,
                  )
                : EdgeInsets.all(
                    28.0,
                  ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                image != null ? 200 : 100,
              ),
              color: ColorsTheme.primary90,
            ),
            child: SvgPicture.string(
              image ?? SvgConfig.checkboxcard,
            ),
          ),
          38.ve,
          ShaderMask(
            shaderCallback: (bounds) =>
                Constant.gradiantFill().createShader(bounds),
            child: Text(
              title ?? 'Wide Range of Tasks',
              style: CustomFontStyle.title50.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 12),
          Text(
            label ??
                'From surveys and app testing to social media engagement, there\'s always something new to earn from.',
            style: CustomFontStyle.label.copyWith(
              color: ColorsTheme.grey50,
            ),
          ),
        ],
      ),
    );
  }
}

class detailsCard extends StatelessWidget {
  const detailsCard({
    super.key,
    this.image,
    this.amount,
  });
  final String? image;
  final String? amount;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        10.38,
      ),
      decoration: BoxDecoration(
        color: ColorsTheme.primary100,
        borderRadius: BorderRadius.circular(
          5.19,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 10.38,
          )
        ],
        border: Border.all(
          width: 0.65,
          color: ColorsTheme.primary90,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: image != null
                ? null
                : EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 5.7,
                  ),
            decoration: image != null
                ? null
                : BoxDecoration(
                    color: ColorsTheme.primary90,
                    borderRadius: BorderRadius.circular(
                      3.89,
                    ),
                    border: Border.all(
                      width: 0.65,
                      color: ColorsTheme.primary50.withOpacity(
                        0.03,
                      ),
                    ),
                  ),
            child: image?.contains(
                      '.png',
                    ) ==
                    true
                ? Image.asset(
                    image!,
                    height: 9.53,
                    width: 44.28,
                  )
                : SvgPicture.string(
                    image ?? SvgConfig.masterCard,
                  ),
          ),
          5.19.he,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              2,
              (index) {
                return Container(
                  margin: EdgeInsets.only(
                    bottom: index == 0 ? 5.19 : 0,
                  ),
                  width: index == 0 ? 60.79 : 44.76,
                  height: 7.95,
                  decoration: BoxDecoration(
                    color: ColorsTheme.primary90,
                    borderRadius: BorderRadius.circular(
                      11.35,
                    ),
                  ),
                );
              },
            ),
          ),
          10.he,
          Text(
            amount ?? '+\$200',
            style: CustomFontStyle.label.copyWith(
              color: ColorsTheme.primaryWhite50,
            ),
          ),
        ],
      ),
    );
  }
}
