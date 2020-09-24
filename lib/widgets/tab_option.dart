import 'package:flutter/material.dart';

class TabOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return Row(
            children: <Widget>[
              Container(
                width: 100,
                color: Color.fromRGBO(255, 255, 255, .2),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.person_add,
                      color: Colors.white,
                      size: 30,
                    ),
                    Spacer(),
                    Text(
                      'Indicar amigos',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: index == 9 ? 20 : 5,
              ),
            ],
          );
        },
      ),
    );
  }
}
