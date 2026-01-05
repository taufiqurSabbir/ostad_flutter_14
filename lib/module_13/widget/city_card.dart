import 'package:flutter/material.dart';
class CityCard extends StatelessWidget {
  final String img,CityName,ratting;

  const CityCard({
    super.key, required this.img, required this.CityName, required this.ratting,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 300,
        height: 200,

        child: Stack(
          children: [
            Image.network(img,
              height: 200,
              width: 300,
              fit: BoxFit.cover,
            ),

            Container(
              height: 200,
              color: Colors.black.withOpacity(0.35),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                children: [
                  Positioned(

                    top: 100,
                    left: 100,


                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(CityName,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),
                      ),
                    ),
                  ),
                  Spacer(),

                  Text('⭐${ratting}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                  )
                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
