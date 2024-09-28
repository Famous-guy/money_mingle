import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moneymingle_web/config/assets/assets.dart';
import 'package:moneymingle_web/core/core.dart';

import '../../config/config.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<String> tabs = [
    'How it works',
    'Features',
    'Testimonials',
    'FAQ',
  ];
  List<Map<String, dynamic>> testimonies = [
    {
      'title': 'Song Yoo-mee',
      'icon': PngConfig.avartar,
      'label':
          '“I never thought I could make money watching videos and completing surveys! Money Mingle has become my favorite side hustle”',
      'bool': false,
    },
    {
      'title': 'Bemra Ramaswami',
      'icon': PngConfig.avartar,
      'label':
          '“Money Mingle gave us valuable product insights within hours. Our social following has grown exponentially since using the platform”',
      'bool': true,
    },
    {
      'title': 'Harsi Kosanam',
      'icon': PngConfig.avartar,
      'label':
          '“As a business, we increased our audience and saw sales grow within a week of uploading tasks!”',
      'bool': false,
    },
  ];
  List<Map<String, dynamic>> features = [
    {
      'title': 'Targeted Advertising',
      'icon': SvgConfig.targetAdvert,
      'label':
          'Create tasks like video ads, app downloads, or social media promotions. MoneyMingle connects you with active users eager to engage with your brand',
    },
    {
      'title': 'Boost Your Sales',
      'icon': SvgConfig.mingle,
      'label':
          'Upload tasks to the platform, increase visibility, and drive sales while paying only for completed tasks.',
    },
    {
      'title': 'Flexible Options',
      'icon': SvgConfig.flexible,
      'label':
          'Set your budget and task requirements, whether you\'re a large corporation or a small business looking to grow.',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final radians = pi / 180;

    return Scaffold(
      backgroundColor: ColorsTheme.black,
      body: Stack(
        children: [
          Positioned.fill(
            top: 32,
            left: 100,
            right: 100,
            child: ListView(
              children: [
                154.ve,
                HeroSection(
                  radians: radians,
                ),
                96.ve,
                HowItWorks(),
                181.ve,
                Features(
                  features: features,
                ),
                175.5.ve,
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
                        baseline: TextBaseline
                            .alphabetic, // Align with alphabetic baseline
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
                )
              ],
            ),
          ),
          Positioned(
            left: 100,
            right: 100,
            top: 32,
            child: MoneyMingleNavBar(
              tabs: tabs,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: IgnorePointer(
              ignoring: true,
              child: Image.asset(
                PngConfig.overlay,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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

class Features extends StatelessWidget {
  const Features({
    super.key,
    required this.features,
  });

  final List<Map<String, dynamic>> features;

  @override
  Widget build(BuildContext context) {
    return Row(
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
              ),
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
    );
  }
}

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

class HowItWorks extends StatelessWidget {
  const HowItWorks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

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
