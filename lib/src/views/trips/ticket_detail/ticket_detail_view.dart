import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TicketDetailView extends StatefulWidget {
  @override
  _TicketDetailViewState createState() => _TicketDetailViewState();
}

class _TicketDetailViewState extends State<TicketDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF64B5F6),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                BoxDestination(),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(20),
                    topRight:Radius.circular(20),
                  )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 22),
                      SelectWay(),
                      const SizedBox(height: 25),
                      SelectOptions(),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Recommendation())
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BoxDestination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(14))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _iconDestination(),
              _originAndDestionation(),
              _originAndDestionationIcon()
            ],
          )
        ],
      ),
    );
  }
}

Widget _originAndDestionationIcon() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const <Widget>[
      Text("SFO", style: TextStyle(fontSize: 20)),
      SizedBox(height: 15),
      Icon(Icons.swap_vert, color: Color(0xfff00d5d8), size: 40),
      SizedBox(height: 15),
      Text("JFK", style: TextStyle(fontSize: 20)),
    ],
  );
}

Widget _originAndDestionation() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      RichText(
        text: const TextSpan(children: <TextSpan>[
          TextSpan(
              text: "Origin \n",
              style: TextStyle(color: Color(0xfffb7b7c5), fontSize: 14)),
          TextSpan(
            text: "San Francisco",
            style: TextStyle(fontSize: 17, color: Colors.black),
          )
        ]),
      ),
      const SizedBox(height: 65),
      RichText(
        text: const TextSpan(children: <TextSpan>[
          TextSpan(
              text: "Destination \n",
              style: TextStyle(color: Color(0xfffb7b7c5), fontSize: 14)),
          TextSpan(
            text: "JFK, New York",
            style: TextStyle(fontSize: 17, color: Colors.black),
          )
        ]),
      ),
    ],
  );
}

Widget _iconDestination() {
  return Container(
    child: Column(
      children: const <Widget>[
        Icon(Icons.airplanemode_active, color: Color(0xfff00d5d8), size: 30),
        Icon(Icons.fiber_manual_record, color: Color(0xfff00d5d8), size: 12),
        Icon(Icons.fiber_manual_record, color: Color(0xfff00d5d8), size: 12),
        Icon(Icons.fiber_manual_record, color: Color(0xfff00d5d8), size: 12),
        Icon(Icons.fiber_manual_record, color: Color(0xffff89380), size: 12),
        Icon(Icons.fiber_manual_record, color: Color(0xffff89380), size: 12),
        Icon(Icons.fiber_manual_record, color: Color(0xffff89380), size: 12),
        Icon(Icons.location_on, color: Color(0xffff89380), size: 30),
      ],
    ),
  );
}

class SelectWay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text("Select the way", style: TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Expanded(
                child: BtnWay(
                  label: "ROUND TRIP",
                  iconData: Icons.swap_horiz,
                  color: Color(0xfff00d5d8),
                ),
              ),
              Expanded(
                child: BtnWay(
                  label: "ONE WAY",
                  iconData: Icons.trending_flat,
                  color: Color.fromARGB(255, 131, 131, 175),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class BtnWay extends StatelessWidget {
  final Function? onTap;
  final String? label;
  final Color? color;
  final IconData? iconData;

  const BtnWay({Key? key, this.onTap, this.label, this.color, this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        alignment: Alignment.center,
        height: 50,
        width: 160,
        decoration: BoxDecoration(
            color: color?.withOpacity(0.3),
            borderRadius: const BorderRadius.all(Radius.circular(25))),
        child: Row(
          children: <Widget>[
            const SizedBox(width: 10),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius:
                      const BorderRadius.all(Radius.circular(14))),
              child: Icon(iconData, color: Colors.white, size: 18),
            ),
            const SizedBox(width: 5),
            Container(
              alignment: Alignment.center,
              width: 90,
              child: Text(label!,
                  style: TextStyle(
                      color: color, fontSize: 15, fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}

class SelectOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: const <Widget>[
            Expanded(
              child: BtnPassengers(
                title: "Departure",
                label: "22 Oct, 2022",
                color: Color(0xffffeb578),
                iconData: Icons.today,
              ),
            ),
            Expanded(
              child: BtnPassengers(
                title: "Return",
                label: "23 Nov, 2022",
                color: Color(0xfff00d5d8),
                iconData: Icons.today,
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: const <Widget>[
            BtnPassengers(
              title: "Passengers",
              label: "2 Adult",
              color: Color(0xffffe8db9),
              iconData: Icons.wc,
            ),
            BtnPassengers(
              title: "Class",
              label: "Economy",
              color: Color(0xfff7d59ee),
              iconData: Icons.today,
            )
          ],
        )
      ],
    );
  }
}

class BtnPassengers extends StatelessWidget {
  final Function? onTap;
  final String? label;
  final String? title;
  final Color? color;
  final IconData? iconData;

  const BtnPassengers(
      {Key? key, this.onTap, this.label, this.title, this.color, this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title!, style: const TextStyle(color: Colors.black)),
          const SizedBox(height: 4),
          Container(
            margin: const EdgeInsets.only(right: 10),
            alignment: Alignment.center,
            height: 55,
            width: 160,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Row(
              children: <Widget>[
                const SizedBox(width: 10),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(14))),
                  child: Icon(iconData, color: Colors.white, size: 18),
                ),
                const SizedBox(width: 5),
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  child: Text(
                    label!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Recommendation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text("Recommended for you",
              style: TextStyle(color: Colors.black, fontSize: 20)),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              const SizedBox(width: 10),
              RecommendationItem(
                title: "nome",
                price: "\$ 30",
                kg: "1",
                color: const Color(0xffffe8db9),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Reservations(
                              color: Color(0xffffe8db9))));
                },
              ),
              RecommendationItem(
                  title: "nome",
                  price: "\$ 60",
                  kg: "2",
                  color: const Color(0xfff00ccff),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Reservations(color: Color(0xfff00ccff))));
                  }),
              RecommendationItem(
                  title: "nome",
                  price: "\$ 90",
                  kg: "3",
                  color: const Color(0xfffffdb83),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Reservations(color: Color(0xfffffdb83))));
                  }),
              RecommendationItem(
                  title: "nome",
                  price: "\$ 120",
                  kg: "4",
                  color: const Color(0xfffaebddd0),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Reservations(
                                color: Color(0xfffaebddd0))));
                  })
            ],
          ),
        )
      ],
    );
  }
}

class RecommendationItem extends StatelessWidget {
  final String? title;
  final String? price;
  final String? kg;
  final Color? color;
  final Function? onTap;

  const RecommendationItem(
      {Key? key, this.title, this.price, this.color, this.onTap, this.kg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap,
      child: Container(
        height: 200,
        width: 180,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(14))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _icon(color!),
            const SizedBox(height: 16),
            const Text("22 February 2022",
                style: TextStyle(color: Colors.white)),
            const SizedBox(height: 14),
            Expanded(child: _destination()),
            const SizedBox(height: 10),
            _price(price!, kg!)
          ],
        ),
      ),
    );
  }
}

Widget _price(String price, kg) {
  return Container(
    child: Row(
      children: <Widget>[
        Text(price, style: const TextStyle(color: Colors.white, fontSize: 20)),
        const SizedBox(width: 5),
        const Icon(Icons.trending_flat, size: 20, color: Colors.white),
        const SizedBox(width: 5),
        Text(kg, style: const TextStyle(color: Colors.white, fontSize: 20)),
        const Text(" kg", style: TextStyle(color: Colors.white, fontSize: 20)),
      ],
    ),
  );
}

Widget _destination() {
  return Container(
    child: Row(
      children: const <Widget>[
        Text("SFO",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        SizedBox(width: 10),
        Icon(Icons.swap_horiz, size: 32, color: Colors.white),
        SizedBox(width: 10),
        Text("OSL",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

Widget _icon(Color color) {
  return Container(
    height: 40,
    width: 40,
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Icon(
      FontAwesomeIcons.weightHanging,
      color: color,
      size: 32,
    ),
  );
}

class Reservations extends StatefulWidget {
  final Color? color;

  const Reservations({Key? key, this.color}) : super(key: key);

  @override
  _ReservationsState createState() => _ReservationsState();
}

class _ReservationsState extends State<Reservations> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                color: widget.color,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: const <Widget>[
                        Icon(Icons.keyboard_backspace,
                            color: Colors.white, size: 25),
                        SizedBox(width: 40),
                        Text("SFO",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                        SizedBox(width: 10),
                        Icon(Icons.swap_horiz, color: Colors.white, size: 25),
                        SizedBox(width: 10),
                        Text("JFK",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                        SizedBox(width: 160),
                        Icon(Icons.build, color: Colors.white, size: 25)
                      ],
                    ),
                    const SizedBox(height: 13),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Text("12 Sep - 15 Sep",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        Text("1 Adult - Economy",
                            style: TextStyle(color: Colors.white, fontSize: 15))
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  decoration: const BoxDecoration(
                      color: Color(0xffff6f5fb),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.87,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text("21 Search Results",
                              style: TextStyle(fontSize: 25)),
                          Icon(Icons.filter_list, color: Colors.black, size: 25)
                        ],
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 590,
                        child: ListView(
                          children: <Widget>[
                            _reservationsItem(),
                            _reservationsItem(),
                            _reservationsItem(),
                            _reservationsItem(),
                            _reservationsItem(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _reservationsItem() {
  return Container(
    width: 500,
    height: 200,
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(14))),
    child: Column(
      children: <Widget>[
        Row(
          children: const <Widget>[
            Icon(Icons.motorcycle, color: Colors.orange, size: 32),
            SizedBox(width: 15),
            Text("Jet Airways",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            SizedBox(width: 120),
            Text("\$999",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(width: 15),
            Icon(Icons.trending_flat, color: Colors.black, size: 27)
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _itemDepartment(),
            _locationPlane(),
            _itemDepartment2()
          ],
        )
      ],
    ),
  );
}

Widget _itemDepartment() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text("Departure", style: TextStyle(color: Colors.black54)),
        SizedBox(height: 10),
        Text("04:55",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        SizedBox(height: 1),
        Text("SFO", style: TextStyle(color: Colors.black54)),
        SizedBox(height: 20),
        Text("21:55",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        SizedBox(height: 1),
        Text("JFK", style: TextStyle(color: Colors.black54)),
      ],
    ),
  );
}

Widget _itemDepartment2() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text("Arrive", style: TextStyle(color: Colors.black54)),
        SizedBox(height: 10),
        Text("09:55",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        SizedBox(height: 1),
        Text("JFK", style: TextStyle(color: Colors.black54)),
        SizedBox(height: 20),
        Text("02:45",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        SizedBox(height: 1),
        Text("SFO", style: TextStyle(color: Colors.black54)),
      ],
    ),
  );
}

Widget _locationPlane() {
  return Container(
    child: Column(
      children: <Widget>[
        Row(
          children: const <Widget>[
            Icon(Icons.flight_takeoff, color: Colors.blue, size: 21),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.location_on, color: Colors.blue, size: 21),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: const <Widget>[
            Icon(Icons.location_on, color: Colors.blue, size: 21),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.flight_takeoff, color: Colors.blue, size: 21),
          ],
        )
      ],
    ),
  );
}
