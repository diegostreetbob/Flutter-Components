import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////
class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: const Text("Stan Lee"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10) ,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundImage: NetworkImage("https://i.blogs.es/85aa44/stan-lee/1366_2000.jpg"),
              ),
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
            maxRadius: 120,
            backgroundImage: NetworkImage("https://i.blogs.es/85aa44/stan-lee/1366_2000.jpg"),
          )
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////