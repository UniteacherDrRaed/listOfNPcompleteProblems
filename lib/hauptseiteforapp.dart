import 'package:flutter/material.dart';

class HauptSeite extends StatefulWidget {
  const HauptSeite({super.key});

  @override
  State<HauptSeite> createState() => _HauptSeiteState();
}

class _HauptSeiteState extends State<HauptSeite> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Some of NP complete problems"
          ),
          bottom: const TabBar(tabs: 
          [
            Tab(
              text: "NP complete problems",
            ),
            Tab(
              text: "refences",
            ),
          ]),
          ),
          body: TabBarView(
            children: [
              Container(
                height: 400,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: 
                    [
                      Colors.pink,
                      Colors.white
                    ])
                ),
              ),
              Container(
                  decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: 
                    [
                      
                      Colors.white,
                      Colors.pink
                    ])
                ),
             
              )
            ],
          ),
      ),
    );
  }
}