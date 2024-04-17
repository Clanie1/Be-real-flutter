import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 30.0,
              height: 30.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://media.licdn.com/dms/image/C5603AQFu4MzdoDJyqA/profile-displayphoto-shrink_800_800/0/1653337678616?e=2147483647&v=beta&t=mVGw-lau2dbVNJkM-JU6Q1TcO1gloMijZ1ABsm0ysBI'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Daniel Barocio",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  Text("Ensenada, Baja California, Mexico",
                      style: TextStyle(color: Colors.white60))
                ],
              ),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: 600.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://media.licdn.com/dms/image/C5603AQFu4MzdoDJyqA/profile-displayphoto-shrink_800_800/0/1653337678616?e=2147483647&v=beta&t=mVGw-lau2dbVNJkM-JU6Q1TcO1gloMijZ1ABsm0ysBI'),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 230, 380),
            child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://scontent.fmxl1-1.fna.fbcdn.net/v/t1.6435-9/36572362_10216192794123381_3699325219752640512_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeF4C4Tox3qPMVpmSuhIw_j1BmpTvOERrdUGalO84RGt1c8vwayFAn-ZJCtlTSe3lEI4paKzRon0jPc6Xr7mB-aM&_nc_ohc=oVUHzZPuEygAb4Liqpg&_nc_oc=AdjDqInn8AbzL_K2f4qDU93PrpsXWgxpU-rx0F29j6_XhUbilWXouF5_OUsMEEidDSM_7UGKfyTwb03Cx4DWhgom&_nc_ht=scontent.fmxl1-1.fna&oh=00_AfCAPe3O7rZgo0DyRFxfBYweOXpH58EJVn5pjtMZKC4XrQ&oe=66460E19")))),
          ),
        ),
      ],
    );
  }
}
