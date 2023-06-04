import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.seiu1000.org/sites/main/files/imagecache/hero/main-images/camera_lense_0.jpeg'),
              ),
              Expanded(
                child: ListTile(
                  trailing: Text("10:00 am"),
                  title: Text('Alkama'),
                  subtitle: Text("Hi bro whats up"),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
