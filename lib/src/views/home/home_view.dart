import 'package:flutter/material.dart';
import '../utilities/responsive.dart';
import 'components/bannerDesktop.dart';
import 'components/bannerMobile.dart';
import 'components/straggeredGridView.dart';
import 'components/titel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              WidgetBanner(),
              WidgetTitle(),
              WidgetStraggeredGridView(
                crossAxisCount: 2,
              ),
            ],
          ),
          tab: tabAndDesktopBannerWidget(3, context),
          desktop: tabAndDesktopBannerWidget(6, context),
        ),
      ),
    );
  }

  Column tabAndDesktopBannerWidget(int size, BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: const Color(0xFF64B5F6),
          child: const WidgetBannerDesktop(),
        ),
        Row(
          children: [
            const WidgetTitle(),
            Expanded(
                child: WidgetStraggeredGridView(
              crossAxisCount: size,
            )),
          ],
        ),
        if (isDesktop(context))
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            color: const Color(0xFF64B5F6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "shipperit.com",
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.whatsapp),
                    Icon(Icons.facebook),
                    Icon(Icons.snapchat),
                    Icon(Icons.telegram),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.snapchat),
                    // Icon(Icons.snapchat),
                    Row(
                      children: const [
                        Icon(Icons.paypal),
                        Icon(Icons.payment),
                        Icon(Icons.paypal),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
      ],
    );
  }
}