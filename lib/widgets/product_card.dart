import 'package:flutter/material.dart';
import 'package:doughsy_pbp/screens/productentry_form.dart';
import 'package:doughsy_pbp/screens/list_productentry.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:doughsy_pbp/screens/login.dart'; 

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}

class ItemCard extends StatelessWidget {
  // Displays a card with an icon and a name.

  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>(); 

    return Material(
      // Sets the background color based on the item color.
      color: item.color,
      // Creates rounded corners for the card.
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        // Asynchronous action when the card is tapped.
        onTap: () async {
          // Show a SnackBar when clicked.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text("You tapped on the ${item.name} button!"),
            ));

          // Navigate to the appropriate route (depending on the button type).
          if (item.name == "Add New Donut") {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ProductEntryFormPage()),
            );
          } else if (item.name == "View Products") {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ProductEntryPage()),
            );
          } 
          // Added asynchronous logout functionality
          else if (item.name == "Logout") {
            final response = await request.logout(
                "http://localhost:8000/auth/logout/"); // Update to your actual URL
            String message = response["message"];
            if (context.mounted) {
              if (response['status']) {
                String uname = response["username"];
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("$message Goodbye, $uname."),
                ));
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                  ),
                );
              }
            }
          }
        },
        // Container to hold Icon and Text.
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Centers the icon and text in the card.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
