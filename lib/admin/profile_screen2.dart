import 'package:flutter/material.dart';
import 'package:oracle_diamond_02/admin/admin_login.dart';
import 'package:oracle_diamond_02/admin/facilities_manage.dart';
import 'package:oracle_diamond_02/screen/rounded_container.dart';
import 'package:oracle_diamond_02/assets.dart';

class ProfileScreen extends StatelessWidget {
  String get avatar => avatar[0];
  final TextStyle whiteText = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(context),
    );
  }

  Widget _buildBottomBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.grey.shade800,
      unselectedItemColor: Colors.grey,
      currentIndex: 0,
      onTap: (i) {},
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_add),
          label: "Refer",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: "History",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Profile",
        ),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildHeader(),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "Dashboard",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),

          Card(
            elevation: 4.0,
            color: Colors.white,
            margin: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    leading: Container(
                      alignment: Alignment.bottomCenter,
                      width: 45.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            height: 20,
                            width: 8.0,
                            color: Colors.grey.shade300,
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            height: 25,
                            width: 8.0,
                            color: Colors.grey.shade300,
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            height: 30,
                            width: 8.0,
                            color: Colors.grey.shade300,
                          ),
                        ],
                      ),
                    ),
                    title: Text("Available"),
                    subtitle: Text("18 courts"),
                  ),
                ),
                VerticalDivider(),
                Expanded(
                  child: ListTile(
                    leading: Container(
                      alignment: Alignment.bottomCenter,
                      width: 45.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            height: 20,
                            width: 8.0,
                            color: Colors.grey.shade300,
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            height: 25,
                            width: 8.0,
                            color: Colors.grey.shade300,
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            height: 40,
                            width: 8.0,
                            color: Colors.red,
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            height: 30,
                            width: 8.0,
                            color: Colors.grey.shade300,
                          ),
                        ],
                      ),
                    ),
                    title: Text("In use"),
                    subtitle: Text("700 courts"),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => FacilitiesManagePage(),
              ));
            },
            child: RoundedContainer(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark,
                    color: Color.fromARGB(255, 28, 151, 182),
                  ),
                ),
                title: Text("Facilities Management"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => FacilitiesManagePage(),
              ));
            },
            child: RoundedContainer(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.event_busy,
                    color: Color.fromARGB(255, 224, 214, 66),
                  ),
                ),
                title: Text("Maintainance Scheduling"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: RoundedContainer(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.list,
                    color: Color.fromARGB(255, 22, 189, 111),
                  ),
                ),
                title: Text("Reservation Detail"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 6.0,
              horizontal: 32.0,
            ),
            child: RawMaterialButton(
              fillColor: const Color.fromARGB(255, 206, 84, 84),
              elevation: 0,
              padding: const EdgeInsets.all(24.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: const Text("Log out",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  )),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AdminPage(),
                ));
              },
            ),
          )
          //const SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Container _buildHeader() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 32.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        color: Color.fromARGB(255, 206, 84, 84),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text(
              "Welcome, Admin!",
              style: whiteText.copyWith(
                  fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
            trailing: CircleAvatar(
              radius: 25.0,
              //backgroundImage: CachedNetworkImageProvider(avatar),
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "Ahmad bin Yaakob",
              style: whiteText.copyWith(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "Pegawai",
              style: whiteText,
            ),
          ),
        ],
      ),
    );
  }

  Container _buildTile(
      {Color? color, IconData? icon, String? title, String? data}) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(
            title!,
            style: whiteText.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            data!,
            style:
                whiteText.copyWith(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
