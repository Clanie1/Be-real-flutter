import 'package:flutter/material.dart';
import '../components/Friend.dart';
import 'HomePage.dart';

class FriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('BeReal',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(30, 30, 31,
                          10000), // Set the background color to gray
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Search friends and more',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(100, 100, 100, 100)),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: const Border(
                      bottom: BorderSide(color: Colors.white12),
                      left: BorderSide(color: Colors.white12),
                      right: BorderSide(color: Colors.white12),
                      top: BorderSide(color: Colors.white12),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 35.0,
                        height: 35.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://avatars.githubusercontent.com/u/79416917?v=4'),
                          ),
                        ),
                      ),
                      const Text(
                        "Invite friends on BeReal",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      const Icon(Icons.arrow_forward, color: Colors.white)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 10, 0),
                  child: Text("MY FRIENDS (50+)",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ),
                const Friend(
                    name: "Daniel Barocio",
                    username: "clanie1.com",
                    image:
                        "https://avatars.githubusercontent.com/u/79416917?v=4"),
                const Friend(
                    name: "Mauricio Munoz",
                    username: "mauLaChupa69",
                    image:
                        "https://avatars.githubusercontent.com/u/74751751?v=4"),
                const Friend(
                    name: "Manuelito Ruiz",
                    username: "mannny20",
                    image:
                        "https://scontent.fmxl1-1.fna.fbcdn.net/v/t1.6435-9/36572362_10216192794123381_3699325219752640512_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeF4C4Tox3qPMVpmSuhIw_j1BmpTvOERrdUGalO84RGt1c8vwayFAn-ZJCtlTSe3lEI4paKzRon0jPc6Xr7mB-aM&_nc_ohc=oVUHzZPuEygAb4Liqpg&_nc_oc=AdjDqInn8AbzL_K2f4qDU93PrpsXWgxpU-rx0F29j6_XhUbilWXouF5_OUsMEEidDSM_7UGKfyTwb03Cx4DWhgom&_nc_ht=scontent.fmxl1-1.fna&oh=00_AfCAPe3O7rZgo0DyRFxfBYweOXpH58EJVn5pjtMZKC4XrQ&oe=66460E19"),
                const Friend(
                    name: "Adrian Fernandez",
                    username: "zod69",
                    image:
                        "https://media.licdn.com/dms/image/C5603AQFu4MzdoDJyqA/profile-displayphoto-shrink_800_800/0/1653337678616?e=2147483647&v=beta&t=mVGw-lau2dbVNJkM-JU6Q1TcO1gloMijZ1ABsm0ysBI"),
                const Friend(
                    name: "Daniel Barocio",
                    username: "clanie1.com",
                    image:
                        "https://avatars.githubusercontent.com/u/79416917?v=4"),
                const Friend(
                    name: "Mauricio Munoz",
                    username: "mauLaChupa69",
                    image:
                        "https://avatars.githubusercontent.com/u/74751751?v=4"),
                const Friend(
                    name: "Manuelito Ruiz",
                    username: "mannny20",
                    image:
                        "https://scontent.fmxl1-1.fna.fbcdn.net/v/t1.6435-9/36572362_10216192794123381_3699325219752640512_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeF4C4Tox3qPMVpmSuhIw_j1BmpTvOERrdUGalO84RGt1c8vwayFAn-ZJCtlTSe3lEI4paKzRon0jPc6Xr7mB-aM&_nc_ohc=oVUHzZPuEygAb4Liqpg&_nc_oc=AdjDqInn8AbzL_K2f4qDU93PrpsXWgxpU-rx0F29j6_XhUbilWXouF5_OUsMEEidDSM_7UGKfyTwb03Cx4DWhgom&_nc_ht=scontent.fmxl1-1.fna&oh=00_AfCAPe3O7rZgo0DyRFxfBYweOXpH58EJVn5pjtMZKC4XrQ&oe=66460E19"),
                const Friend(
                    name: "Adrian Fernandez",
                    username: "zod69",
                    image:
                        "https://media.licdn.com/dms/image/C5603AQFu4MzdoDJyqA/profile-displayphoto-shrink_800_800/0/1653337678616?e=2147483647&v=beta&t=mVGw-lau2dbVNJkM-JU6Q1TcO1gloMijZ1ABsm0ysBI"),
              ],
            ),
          ),
        ));
  }
}
