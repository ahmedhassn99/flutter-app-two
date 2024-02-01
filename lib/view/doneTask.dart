import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoneTask extends StatelessWidget {
  const DoneTask({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.tealAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            height: 70,
           child: Center(
             child: Text(
              "Product ${index + 1}",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
          ),
           ),

          ),
        );
      },
    );
  }
}
