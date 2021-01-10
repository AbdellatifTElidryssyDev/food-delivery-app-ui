import 'package:flutter/material.dart';

class FoodCardRow extends StatelessWidget {
  final String image;
  final String title;
  final String discription;
  final String price;

  const FoodCardRow({
    Key key,
    this.image,
    this.title,
    this.discription,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Positioned(
          left: 0,
          child: Container(
            height: 190,
            width: 170,
            child: Image.asset('assets/$image.png'),
          ),
        ),
        Positioned(
          right: 12,
          top: 50,
          child: Container(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 7),
                    Text(
                      discription,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.add_circle,
                  color: Colors.black,
                  size: 35,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
