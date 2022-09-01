import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        title: Center(child: Text('D E S K T O P')),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
              color: Theme.of(context).focusColor,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            color: Theme.of(context).focusColor,
                            height: 110,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: AspectRatio(
                                      aspectRatio: 1, // for square
                                      child: Icon(Icons.add_home_outlined)),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 100,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text('Title'),
                                          Text('Channel '),
                                          Row(
                                            children: [
                                              Text('2.4k views'),
                                              Text('1 month ago'),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
