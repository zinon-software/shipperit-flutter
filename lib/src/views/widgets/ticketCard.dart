import 'package:flutter/material.dart';

import '../utilities/themeColors.dart';
import '../utilities/themeStyles.dart';

class TicketCard extends StatefulWidget {
  final int? price;
  final String? destinationCode;
  final String? originCode;
  final String? arrivalTime;
  final String? departureTime;
  final bool? stops;
  final String? totalTime;
  final bool? ticketType;
  TicketCard(
      {this.price,
      this.arrivalTime,
      this.departureTime,
      this.destinationCode,
      this.originCode,
      this.stops,
      this.totalTime,
      this.ticketType});
  @override
  _TicketCardState createState() => _TicketCardState();
}

class _TicketCardState extends State<TicketCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(0, 1),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 30.0, bottom: 30.0, left: 35.0, right: 35.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('\$${widget.price}',
                              style: ThemeStyles.ticketPrice)
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Fr 6 Mar.', style: ThemeStyles.greyStyle),
                          Text('Fr 6 Mar.', style: ThemeStyles.greyStyle),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('${widget.originCode}',
                              style: ThemeStyles.mainBlackTextStyle),
                          Text('${widget.destinationCode}',
                              style: ThemeStyles.mainBlackTextStyle)
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('${widget.departureTime}',
                              style: ThemeStyles.subBlackTextStyle),
                          Text('${widget.arrivalTime}',
                              style: ThemeStyles.subBlackTextStyle),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        children: const <Widget>[
                          Expanded(flex: 1,child: Icon(Icons.blur_on, color: Colors.grey)),
                          Text('- - - - - - - - - - - - - -'),
                          Icon(Icons.flight_takeoff, color: Colors.grey),
                          Text('- - - - - - - - - - - - - -'),
                          Icon(Icons.blur_on, color: Colors.grey),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('${widget.totalTime}',
                              style: ThemeStyles.greyStyle),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: widget.ticketType! ? ThemeColors.orange : Colors.grey,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: const Radius.circular(50.0),
                        topRight: const Radius.circular(50.0)),
                  ),
                  height: 70.0,
                  width: 100.0,
                  child: widget.ticketType!
                      ? const Center(
                          child: Text(
                            'Top',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : const Center(
                          child: const Text(
                            'Med',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
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
