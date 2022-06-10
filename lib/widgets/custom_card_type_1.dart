import 'package:flutter/material.dart';
////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////
class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
              title: Text("soy un titulo"),
              subtitle: Text("soy un subtitulo"),
              leading: Icon(Icons.photo_album_outlined)
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: (){},
                    child: const Text("Cancel")
                ),
                TextButton(
                    onPressed: (){},
                    child: const Text("Ok")
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
