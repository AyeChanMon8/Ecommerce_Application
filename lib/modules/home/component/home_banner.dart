import 'package:flutter/material.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 190,
            height: 220,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/home_banner.png'),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 10,
                  right: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Stay Home & \nGet Your Daily Needs \nFrom Our Stores",
                        style: TextStyle(
                            fontFamily: 'AirbnbCerealBold',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 130,
            height: 220,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/mask_group.png'),
            ),
          ),
        ],
      ),
    );
  }
}
