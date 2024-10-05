// ignore_for_file: prefer_final_fields

import 'dart:math';

import 'package:flutter/material.dart';

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
    'For businesses',
    'Testimonials',
    'FAQ',
  ];
  List<String> socials = [
    SvgConfig.ig,
    SvgConfig.twitter,
    SvgConfig.tiktok,
    SvgConfig.youtube,
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
  List<PanelItem> _panelData = [
    PanelItem(
      title: 'How quickly can I earn?',
      description:
          'As soon as you complete a task! Tasks take just minutes, and you can cash out immediately.',
    ),
    PanelItem(
      title: 'What tasks are available?',
      description:
          'Tasks range from watching videos, taking surveys, downloading apps, and engaging with social media content.',
    ),
    PanelItem(
      title: 'How do I update my account information?',
      description:
          'You can update your account information through the account settings.',
    ),
    PanelItem(
      title: 'How do businesses benefit?',
      description:
          'Businesses get real-time feedback, social engagement, and marketing insights tailored to their target audience.',
    ),
    PanelItem(
      title: 'Are there any minimum payout thresholds?',
      description:
          'The minimum payout is \$5, you can cash out instantly using your choice withdrawal method.',
    ),
  ];

  int? _currentlyExpandedIndex;

  @override
  Widget build(BuildContext context) {
    const radians = pi / 180;

    return Scaffold(
      backgroundColor: ColorsTheme.black,
      body: Stack(
        children: [
          Positioned.fill(
            top: 32,
            left: 0,
            right: 0,
            child: ListView(
              children: [
                154.ve,
                const HeroSection(
                  radians: radians,
                ),
                96.ve,
                const HowItWorks(),
                181.ve,
                Features(
                  features: features,
                ),
                175.5.ve,
                Testimonies(
                  testimonies: testimonies,
                ),
                204.ve,
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 109.5,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 403,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'FAQ’S',
                              style: CustomFontStyle.label2.copyWith(
                                color: ColorsTheme.primaryColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'Frequently Asked Questions',
                              style: CustomFontStyle.title40.copyWith(
                                fontSize: 48,
                              ),
                            ),
                          ],
                        ),
                      ),
                      88.he,
                      Expanded(
                        child: Column(
                          children: List.generate(
                            _panelData.length,
                            (index) {
                              return _buildPanel(index);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                104.ve,
                const CallToAction(),
                60.ve,
                Footer(
                  tabs: tabs,
                  socials: socials,
                ),
                60.ve,
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

  // Build each panel item with custom expand/collapse animation
  Widget _buildPanel(int index) {
    final bool isExpanded = _currentlyExpandedIndex == index;
    final panelItem = _panelData[index];

    return GestureDetector(
      onTap: () {
        setState(() {
          // Toggle the current item, and collapse any previously opened item
          if (_currentlyExpandedIndex == index) {
            _currentlyExpandedIndex = null; // Collapse if already expanded
          } else {
            _currentlyExpandedIndex = index; // Expand this one
          }
        });
      },
      child: Container(
        // margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 32,
        ),
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    panelItem.title,
                    style: CustomFontStyle.title40.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                // Change between 'add' (plus) and 'remove' (minus) icons
                Icon(
                  isExpanded
                      ? Icons.remove
                      : Icons.add, // Plus when collapsed, minus when expanded
                  color: Colors.white,
                ),
              ],
            ),
            AnimatedSize(
              duration: const Duration(
                milliseconds: 300,
              ),
              curve: Curves.easeInOut,
              child: ConstrainedBox(
                constraints: isExpanded
                    ? const BoxConstraints() // Expanded state (no constraint)
                    : const BoxConstraints(
                        maxHeight: 0,
                      ), // Collapsed state
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    right: 100,
                  ),
                  child: Text(
                    panelItem.description,
                    style: CustomFontStyle.label.copyWith(
                      color: ColorsTheme.grey50,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PanelItem {
  String title;
  String description;
  bool isExpanded;

  PanelItem({
    required this.title,
    required this.description,
    this.isExpanded = false,
  });
}
