import 'package:flutter/material.dart';

class Module13Class4 extends StatefulWidget {
  const Module13Class4({super.key});

  @override
  State<Module13Class4> createState() => _Module13Class4State();
}

class _Module13Class4State extends State<Module13Class4> {
  bool NonAniselected = false;
  bool selected = false;
  bool showMessage = false;
  bool isLogin = false;
  bool showPanel = false;
  int cartCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // AnimatedContainer
        
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: selected ? 140 : 110,
                decoration: BoxDecoration(
                  color: selected ? Colors.green : Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text('Product card'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  NonAniselected = !NonAniselected;
                });
              },
              child: Container(
                height: NonAniselected ? 140 : 110,
                decoration: BoxDecoration(
                  color: NonAniselected ? Colors.green : Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text('Product card'),
              ),
            ),
        
            SizedBox(
              height: 50,
            ),
            Divider(),
        
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    showMessage = !showMessage;
                  });
        
                  Future.delayed(Duration(seconds: 3), () {
                    setState(() {
                      showMessage = false;
                    });
                  });
                },
                child: Text('Add to cart')),
        
            // AnimatedOpacity
        
            AnimatedOpacity(
              opacity: showMessage ? 1 : 0,
              duration: Duration(milliseconds: 700),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  elevation: 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 13),
                    child: Text(
                      'Added to cart',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
        
            // AnimatedSwitcher
        
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Cart: '),
                AnimatedSwitcher(
                  duration: Duration(
                    milliseconds: 1000,
                  ),
                  child: Text(
                    '$cartCount',
                    style: TextStyle(fontSize: 24),
                  ),
                  key: ValueKey(cartCount),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        cartCount++;
                      });
                    },
                    icon: Icon(Icons.add))
              ],
            ),
        
            //   AnimatedAlign
        
            SizedBox(
              height: 300,
              width: double.infinity,
              child: AnimatedAlign(
                alignment: isLogin ? Alignment.topRight : Alignment.center,
                duration: Duration(milliseconds: 1000),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrN3fMD9X1_p5b6lRSCGcpDtH9BcgEOsEZLg&s'),
                  radius: 50,
                ),
              ),
            ),
        
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                child: Text('Login')),

            SizedBox(height: 30,),
            
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          showPanel = !showPanel;
                        });

                        Future.delayed(Duration(seconds: 3), () {
                          setState(() {
                            showPanel = false;
                          });
                        });
                      }, child: Text('Toggle bottom'))),
                  
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 800),
                    bottom: showPanel ? 0 : -120,
                    left: 0,
                     right: 0,
                    child: Container(
                      height: 120,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text('Bottom pannel'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
