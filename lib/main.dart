import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:moneymingle_web/config/theme/colors_theme.dart';
import 'package:moneymingle_web/src/src.dart';

void main() {
  if (kIsWeb) {
    MetaSEO().config();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      // Define MetaSEO object
      MetaSEO meta = MetaSEO();
      // add meta seo data for web app as you want
      meta.author(author: 'EMoney Mingle');
      meta.description(
          description:
              'Money Mingle connects hustlers seeking quick cash with businesses needing real-time insights. Users earn rewards for completing tasks that help businesses thrive.');
      meta.keywords(
          keywords:
              'money mingle, Mingle, Money, Monkey Mingle, Mingre, mindle, how to make money in 2024/2025, hustlers, business, Money Mingle, Moneymingle, MoneyMingle App, Mingle App, Money App, Money Management, Mingle, Money Management Tools, finance app, money management platform, moneymingleapp, moneymingle, money mingle app, app, mingle, money, mingle app');
      meta.ogTitle(ogTitle: 'MoneyMingle');
      meta.ogDescription(
          ogDescription:
              'Moneymingle helps you earn money, anytime, anywhere. Explore the app now!');
      meta.ogImage(ogImage: 'https://moneymingle.app/icons/logo.png');

      // here you can add any tags does not exist in the package as this
      meta.propertyContent(property: 'og:site_name', content: 'MoneyMingle');

      // or if you want to add twitter card meta tags just as the following
      meta.twitterCard(twitterCard: TwitterCard.summaryLargeImage);
      meta.twitterTitle(twitterTitle: 'MoneyMingle');
      meta.twitterDescription(
          twitterDescription:
              'Moneymingle helps you earn money, anytime, anywhere. Explore the app now!');
      meta.twitterImage(twitterImage: 'https://moneymingle.app/icons/logo.png');

      // here you can add any tags does not exist in the package as this
      meta.nameContent(name: 'twitter:site', content: '@money_mingle');
    }

    return ScreenUtilInit(
        // No need for fixed designSize here.
        builder: (context, child) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(
            seedColor: ColorsTheme.primaryColor,
          ),
          primaryColorLight: ColorsTheme.primaryColor,
          primaryColorDark: ColorsTheme.primary100,
          useMaterial3: true,
        ),
        home: LandingPage(),
      );
    });
  }
}
