import 'package:flutter/material.dart';
import 'package:profile_page/stat_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String avatarUrl =
      "https://i.pinimg.com/originals/b7/11/f9/b711f9a77e55c731eecbebf077d334b9.jpg";
  List<String> images = [
    "https://i.pinimg.com/564x/60/ee/7d/60ee7d5f0790578be51c1926b29f2af7.jpg",
    "https://i.pinimg.com/564x/85/0c/22/850c2274f46dc8e02ec72991a1430716.jpg",
    "https://i.pinimg.com/564x/e4/e3/f9/e4e3f97d1e862a65104bb3a74d17dd5a.jpg",
    "https://i.pinimg.com/564x/f9/3e/e3/f93ee3ea5f2931566fbb379668087ec4.jpg",
    "https://i.pinimg.com/564x/d1/10/82/d11082d8b2f2ab176ade0fe7a5526a0c.jpg",
    "https://i.pinimg.com/564x/85/0c/22/850c2274f46dc8e02ec72991a1430716.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(avatarUrl),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Que Dinh T.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                statWidet("Post", "32"),
                statWidet("Follow", "500"),
                statWidet("Follower", "99")
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.black,
                    onPressed: () {},
                    child: const Text(
                      "Follow",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: OutlineButton(
                    onPressed: () {},
                    child: Text("Message"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(images[index]))),
                      ),
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }
}
