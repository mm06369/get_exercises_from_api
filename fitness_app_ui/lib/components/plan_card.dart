

import 'package:fitness_app_ui/tabs/tabs.dart';
import 'package:flutter/material.dart';

class PlanCard extends StatelessWidget {

  final String title;
  const PlanCard({Key? key, required this.title}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_) => Tabs()));
      },
      child: Container(
                        padding: const EdgeInsets.all(25.0),
                        height: 220,
                        width: MediaQuery.of(context).size.width - 40.0,
                        margin: const EdgeInsets.only(bottom: 30.0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(241, 227, 255, 1.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Text(
                          title,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Color.fromRGBO(190, 130, 255, 1.0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
    );
  }
}