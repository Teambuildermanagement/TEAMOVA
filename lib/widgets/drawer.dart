import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_builder/models/user_model.dart';
import 'package:team_builder/providers/user_provider.dart';
import 'package:team_builder/screens/aboutus.dart';
import 'package:team_builder/screens/feed_screen.dart';
import 'package:team_builder/utils/colors.dart';
import '../models/user_model.dart' as model;

import '../resources/auth_methods.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({super.key});

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  bool isLoading = false;
  @override
  @override
  Widget build(BuildContext context) {
    final User _user = Provider.of<UserProvider>(context).getUser;
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context, _user.name, _user.email),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context, String name, String email) {
    final model.User userProvider = Provider.of<UserProvider>(context).getUser;
    return Container(
      color: mainColor,
      padding: EdgeInsets.only(
        top: 15 + MediaQuery.of(context).padding.top,
        bottom: 15,
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage(userProvider.photoUrl),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            name,
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            email,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Wrap(
        runSpacing: 15,
        children: [
          ListTile(
            leading: const Icon(
              Icons.home_outlined,
              color: mainColor,
            ),
            title: const Text("Home"),
            onTap: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const FeedScreen(), // Add Function
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.person_outlined,
              color: mainColor,
            ),
            title: const Text("Profile"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DeleteThisLater(), // Add Function
                ),
              );
            },
          ),
           ListTile(
            leading: const Icon(
              Icons.info_outlined,
              color: mainColor,
            ),
            title: const Text("About Us"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AboutUs(), // Add Function
                ),
              );
            },
          ),
          const Divider(
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(
              Icons.lock_outlined,
              color: mainColor,
            ),
            title: const Text("Log Out"),
            onTap: () async {
              await AuthMethods().signOut();
            }, // Add Function
          ),
        ],
      ),
    );
  }
}

class DeleteThisLater extends StatelessWidget {
  const DeleteThisLater({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
