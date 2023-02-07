import 'package:flutter/material.dart';

import '../../utilities/fontSize.dart';
import '../../utilities/themeColors.dart';
import '../../utilities/themeStyles.dart';
import '../../widgets/card/customCard.dart';

class WidgetBanner extends StatefulWidget {
  const WidgetBanner({Key? key}) : super(key: key);

  @override
  _WidgetBannerState createState() => _WidgetBannerState();
}

class _WidgetBannerState extends State<WidgetBanner> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          // height: 380,
          height: size.height * 0.7,
          alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(
            color: Color(0xFF64B5F6),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: Image.asset('assets/images/homePage/banners.png'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 40,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: MyColors.blackText,
                        )),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Current Location",
                          style: TextStyle(
                              color: MyColors.blackText,
                              fontSize: MyFontSize.small2),
                        ),
                        const SizedBox(height: 3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.circle_outlined,
                              size: 10,
                              color: MyColors.blackText,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Khartoum",
                              style: TextStyle(
                                  color: MyColors.blackText,
                                  fontSize: MyFontSize.medium1),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 24,
                              color: MyColors.blackText,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Image.asset(
                        "assets/images/homePage/avatar.jpg",
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Tracking Your Package",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: MyColors.blackText,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Text(
                "Please enter your tracking number",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: MyColors.blackText,
                  fontSize: MyFontSize.medium1,
                ),
              ),
              const SizedBox(height: 20),
              CustomCard(
                shadow: false,
                height: 45,
                width: double.infinity,
                bgColor: MyColors.white,
                borderRadius: BorderRadius.circular(10),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.car_rental,
                      color: MyColors.yellow,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        "Enter track number",
                        style: MyStyle.textParagraphBlack,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomCard(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => TrackingShipment()));
                      },
                      shadow: false,
                      bgColor: MyColors.yellow,
                      borderRadius: BorderRadius.circular(10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 7),
                      child: Text(
                        "Track",
                        style: MyStyle.textParagraphBlack,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
