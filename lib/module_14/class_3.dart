import 'package:flutter/material.dart';

import '../module_11/class_2.dart';
import '../module_12/class_1.dart';
import '../module_12/module_12_grid.dart';
import '../module_13/widget/city_card.dart';

class Module14Class3 extends StatefulWidget {
  const Module14Class3({super.key});

  @override
  State<Module14Class3> createState() => _Module14Class3State();
}

class _Module14Class3State extends State<Module14Class3> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabbar'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            color: Colors.grey,
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15)
              ),
                indicatorPadding: EdgeInsets.all(1),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.deepPurple,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                    text: 'Home',
                  ),
                  Tab(
                    icon: Icon(Icons.favorite),
                    text: 'Fav',
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                    text: 'settings',
                  ),
                ]),
          ),
        ),
      ),

      body: TabBarView(
          controller: _tabController,
          children: [
        // Container(
        //   decoration: BoxDecoration(
        //     color: Colors.blue
        //   ),
        //   child: Center(child: Text('Home',style: TextStyle(
        //     fontSize: 30,
        //     color: Colors.white
        //   ),)),),
        // Container(
        //   decoration: BoxDecoration(
        //       color: Colors.red
        //   ),
        //   child: Center(child: Text('Fav',style: TextStyle(
        //       fontSize: 30,
        //       color: Colors.white
        //   ),)),),
        // Container(
        //   decoration: BoxDecoration(
        //       color: Colors.green
        //   ),
        //   child: Center(child: Text('Seeting',style: TextStyle(
        //       fontSize: 30,
        //       color: Colors.white
        //   ),)),),


        CityCard(
          img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtdUhaC5rpDkzKbopf5UF90ccKowzRiYxE8A&s',
          CityName: 'Sylhet ',
          ratting: '4.9',
        ),
        Module12Class1(),
        Column(
          children: [
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtdUhaC5rpDkzKbopf5UF90ccKowzRiYxE8A&s'),
            Text('Custom UI')
          ],
        )

      ]),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Column(
              children: [
                CircleAvatar(
                  radius:42,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrN3fMD9X1_p5b6lRSCGcpDtH9BcgEOsEZLg&s'

                  ),
                ),

                Text('Taufiqur Sabbir',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),
                Text('taufiqur2511@gmail.com',
                  style: TextStyle(fontSize: 14),
                )
              ],
            )),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('List item-1'),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              title: Text('List item-1'),
              onTap: (){},
            ),
            Divider(),

            ListTile(
              title: Text('List item-1'),
              onTap: (){},
            ),
            Divider(),

            ListTile(
              title: Text('List item-1'),
              onTap: (){},
            ),
            Divider(),

            ListTile(
              title: Text('List item-1'),
              onTap: (){},
            ),
            Divider(),

            ListTile(
              title: Text('List item-1'),
              onTap: (){},
            ),
            Divider(),

            ListTile(
              title: Text('List item-1'),
              onTap: (){},
            ),
            Divider(),

            ListTile(
              title: Text('List item-1'),
              onTap: (){},
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Column(
              children: [
                CircleAvatar(
                  radius:42,
                  backgroundImage: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrN3fMD9X1_p5b6lRSCGcpDtH9BcgEOsEZLg&s'

      ),
                ),

                Text('Taufiqur Sabbir',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                ),
                Text('taufiqur2511@gmail.com',
                style: TextStyle(fontSize: 14),
                )
              ],
            )),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('List item-1'),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              title: Text('List item-1'),
              onTap: (){},
            ),
            Divider(),

            ListTile(
              title: Text('List item-1'),
              onTap: (){},
            ),
            Divider(),

            ListTile(
              title: Text('List item-1'),
              onTap: (){},
            ),
            Divider(),

            ListTile(
              title: Text('List item-1'),
              onTap: (){},
            ),
            Divider(),

            ListTile(
              title: Text('List item-1'),
              onTap: (){},
            ),
            Divider(),

            ListTile(
              title: Text('List item-1'),
              onTap: (){},
            ),
            Divider(),

            ListTile(
              title: Text('List item-1'),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
