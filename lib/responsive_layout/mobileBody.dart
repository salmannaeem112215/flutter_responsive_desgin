import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        title: Center(child: Text('M O B I L E')),
      ),
      body: Column(
        children: [
          Card(
            elevation: 10,
            color: Theme.of(context)
                .primaryColor, // otherwise background will be white and due to padding not goot
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Theme.of(context).indicatorColor,
                  height: 240,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: Theme.of(context).focusColor,
                    height: 120,
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
