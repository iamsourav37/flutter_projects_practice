import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/destination_model.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Destinations",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("see all , pressed");
                },
                child: Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        DestinationList(),
      ],
    );
  }
}

class DestinationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: destinations.length,
        itemBuilder: (BuildContext context, int index) {
          Destination destination = destinations[index];
          return Container(
            height: 250,
            margin: EdgeInsets.all(10),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  bottom: 0.0,
                  child: Container(
                    height: 120,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "${destinations.length} activities",
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(7, 5, 5, 0),
                            child: Text(
                              "${destination.description}",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6.0,
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          height: 180.0,
                          width: 180.0,
                          image: AssetImage(destination.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: 10.0,
                        bottom: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              destination.city,
                              style: TextStyle(
                                fontSize: 19.0,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.locationArrow,
                                  size: 9.0,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  destination.country,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
