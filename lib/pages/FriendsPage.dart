import 'package:flutter/material.dart';
import '../components/Friend.dart';

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
              onPressed: () => {},
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
                                'data:image/jpeg;base64,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'),
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
