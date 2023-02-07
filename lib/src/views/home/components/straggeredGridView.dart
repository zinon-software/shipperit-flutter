
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../cargo/home_cargo/home_cargo_view.dart';
import '../../trips/home_trips/home_trips_view.dart';
import '../../utilities/fontSize.dart';
import '../../utilities/themeColors.dart';
import '../../widgets/card/customCard.dart';

class WidgetStraggeredGridView extends StatefulWidget {
  const WidgetStraggeredGridView({Key? key, required this.crossAxisCount})
      : super(key: key);
  final int crossAxisCount;

  @override
  _WidgetStraggeredGridViewState createState() =>
      _WidgetStraggeredGridViewState();
}

class _WidgetStraggeredGridViewState extends State<WidgetStraggeredGridView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: StaggeredGrid.count(
        // crossAxisCount: isMobile(context) ? 2 : 4,
        crossAxisCount: widget.crossAxisCount,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: [
          CustomCard(
            onTap: () {
              Get.to(() => const HomeTripsView());
            },
            shadow: false,
            width: double.infinity,
            bgColor: MyColors.green,
            borderRadius: BorderRadius.circular(15),
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCard(
                    shadow: false,
                    height: 50,
                    width: 50,
                    bgColor: MyColors.yellow,
                    borderRadius: BorderRadius.circular(100),
                    child: const Center(
                      child: Icon(Icons.airplane_ticket),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Airline ticket booking",
                  style: TextStyle(
                      color: MyColors.white,
                      fontSize: MyFontSize.medium1,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Book the cheapest flight deals",
                  style: TextStyle(
                    color: MyColors.white.withOpacity(.8),
                    fontSize: MyFontSize.small3,
                  ),
                ),
              ],
            ),
          ),
          CustomCard(
            onTap: () {
              Get.to(() => const HomeCargoView());
            },
            shadow: false,
            width: double.infinity,
            bgColor: MyColors.green,
            borderRadius: BorderRadius.circular(15),
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCard(
                    shadow: false,
                    height: 50,
                    width: 50,
                    bgColor: MyColors.yellow,
                    borderRadius: BorderRadius.circular(100),
                    child: const Center(
                      child: Icon(Icons.card_giftcard_outlined),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Ship your luggage all over the world",
                  style: TextStyle(
                      color: MyColors.white,
                      fontSize: MyFontSize.medium1,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "We offer you the cheapest shipping offers in the world",
                  style: TextStyle(
                    color: MyColors.white.withOpacity(.8),
                    fontSize: MyFontSize.small3,
                  ),
                ),
              ],
            ),
          ),
          CustomCard(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => TrackingShipment()));
            },
            shadow: false,
            width: double.infinity,
            bgColor: MyColors.green,
            borderRadius: BorderRadius.circular(15),
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCard(
                    shadow: false,
                    height: 50,
                    width: 50,
                    bgColor: MyColors.yellow,
                    borderRadius: BorderRadius.circular(100),
                    child: const Center(
                      child: Icon(Icons.calculate),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Calculate shipment amount",
                  style: TextStyle(
                      color: MyColors.white,
                      fontSize: MyFontSize.medium1,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "All price options are base on price",
                  style: TextStyle(
                    color: MyColors.white.withOpacity(.8),
                    fontSize: MyFontSize.small3,
                  ),
                ),
              ],
            ),
          ),
          CustomCard(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => TrackingShipment()));
            },
            shadow: false,
            width: double.infinity,
            bgColor: MyColors.softGrey,
            borderRadius: BorderRadius.circular(15),
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCard(
                    shadow: false,
                    height: 50,
                    width: 50,
                    bgColor: MyColors.yellow,
                    borderRadius: BorderRadius.circular(100),
                    child: const Center(child: Icon(Icons.car_rental))),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Track Your Shipment Location",
                  style: TextStyle(
                      color: MyColors.blackText,
                      fontSize: MyFontSize.medium1,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Control your package like a boss, you will know every movement of the package and the estimation",
                  style: TextStyle(
                    color: MyColors.blackText.withOpacity(.8),
                    fontSize: MyFontSize.small3,
                  ),
                ),
              ],
            ),
          ),
          CustomCard(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => TrackingShipment()));
            },
            shadow: false,
            width: double.infinity,
            bgColor: MyColors.softGrey,
            borderRadius: BorderRadius.circular(15),
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCard(
                    shadow: false,
                    height: 50,
                    width: 50,
                    bgColor: MyColors.yellow,
                    borderRadius: BorderRadius.circular(100),
                    child: const Center(child: Icon(Icons.analytics))),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Your order history",
                  style: TextStyle(
                      color: MyColors.blackText,
                      fontSize: MyFontSize.medium1,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "View all your order history. See how we sent it so fast. We believe that the sooner we ship to you, the better our service will be in your eyes.",
                  style: TextStyle(
                    color: MyColors.blackText.withOpacity(.8),
                    fontSize: MyFontSize.small3,
                  ),
                ),
              ],
            ),
          ),
          CustomCard(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => TrackingShipment()));
            },
            shadow: false,
            width: double.infinity,
            bgColor: MyColors.softGrey,
            borderRadius: BorderRadius.circular(15),
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCard(
                    shadow: false,
                    height: 50,
                    width: 50,
                    bgColor: MyColors.yellow,
                    borderRadius: BorderRadius.circular(100),
                    child: const Center(child: Icon(Icons.restore))),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Return the damaged item",
                  style: TextStyle(
                      color: MyColors.blackText,
                      fontSize: MyFontSize.medium1,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "We accept returns of damaged goods due to our less than optimal delivery, or external intervention that causes your goods to be damaged. ",
                  style: TextStyle(
                    color: MyColors.blackText.withOpacity(.8),
                    fontSize: MyFontSize.small3,
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
