import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTask extends StatelessWidget {
  const NewTask({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return
          Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            height: 70,
            child: ListTile(
              onTap: () {},
              title: Center(
                child: Text(
                  "Product ${index + 1}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              leading: Icon(Icons.monetization_on_sharp),
              trailing: Text(
                "100",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      },
    );
  }
}
