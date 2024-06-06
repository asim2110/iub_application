import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iub_application/Models/griditem_model.dart';
import 'package:iub_application/Views/DashBoard/Drawar/contact_us.dart';
import 'package:iub_application/Views/DashBoard/Drawar/edit_profile.dart';
import 'package:iub_application/Views/DashBoard/Drawar/my_profile.dart';
import 'package:iub_application/Views/DashBoard/Drawar/update_password.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Dashboard',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 8, 49, 101),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 103, 79, 163),
                ),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 0.05,
                  width: 0.05,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image(
                    image: AssetImage("assets/logo.png"),
                  ),
                )),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Color.fromARGB(255, 8, 49, 101),
              ),
              title: Text(
                'My Profile',
                style: TextStyle(color: const Color.fromARGB(255, 8, 49, 101)),
              ),
              onTap: () {
                Get.off((MyProfile()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.edit,
                color: const Color.fromARGB(255, 8, 49, 101),
              ),
              title: Text(
                'Edit Profile',
                style: TextStyle(color: const Color.fromARGB(255, 8, 49, 101)),
              ),
              onTap: () {
                Get.off((Edit_Profile()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.lock_clock_sharp,
                color: const Color.fromARGB(255, 8, 49, 101),
              ),
              title: Text(
                'Update Password',
                style: TextStyle(color: const Color.fromARGB(255, 8, 49, 101)),
              ),
              onTap: () {
                Get.off((Update_Password()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.contact_page_rounded,
                color: const Color.fromARGB(255, 8, 49, 101),
              ),
              title: Text(
                'Contact Us',
                style: TextStyle(color: const Color.fromARGB(255, 8, 49, 101)),
              ),
              onTap: () {
                Get.off((Contact_Us()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.school_rounded,
                color: const Color.fromARGB(255, 8, 49, 101),
              ),
              title: Text(
                'IUB',
                style: TextStyle(color: const Color.fromARGB(255, 8, 49, 101)),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.logout_sharp,
                color: const Color.fromARGB(255, 8, 49, 101),
              ),
              title: Text(
                'LogOut',
                style: TextStyle(color: const Color.fromARGB(255, 8, 49, 101)),
              ),
              onTap: () {
                // Add navigation logic here
              },
            ),
            // Add more items as needed
          ],
        ),
      ),

      //////Dashboard settings///////////////////////////////////
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: GridView.builder(
          itemCount: gridItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 1.0,
          ),
          itemBuilder: (context, index) {
            final item = gridItems[index];
            return InkWell(
              onTap: () {
                if (item.destination != null) {
                  Get.off((item.destination!));
                }
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                      color: const Color.fromARGB(255, 8, 49, 101), width: 1.5),
                ),
                color: const Color.fromARGB(255, 224, 224, 224),
                elevation: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item.icon,
                      size: height * 0.048,
                      color: const Color.fromARGB(255, 8, 49, 101),
                    ),
                    SizedBox(height: 10),
                    Text(
                      item.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.025,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
