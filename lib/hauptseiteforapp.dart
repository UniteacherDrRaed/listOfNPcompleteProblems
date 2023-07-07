import 'package:flutter/material.dart';

class HauptSeite extends StatefulWidget {
  const HauptSeite({super.key});

  @override
  State<HauptSeite> createState() => _HauptSeiteState();
}

class _HauptSeiteState extends State<HauptSeite> {
  final List _listOfNPcompleteProblems=[
  "SAT",
  "maximum clique",
  "minimum vertex cover",
  "Hamiltonian cycle problem",
  "longest path problem",
  "Hamiltonian path problem",
  "3SAT",
  "Subset Sum",
  "partition problem",
  "longest cycle problem",
  "Traveling Salesman problem",
];
// ignore: prefer_final_fields
void nextProblem()
{
  setState(() {
    if (_indexPrpblem<_listOfNPcompleteProblems.length-1) 
    {
         _indexPrpblem++;
    }
    
  });
}

void previousProblem()
{
  setState(() {
    if (_indexPrpblem>1) 
    {
         _indexPrpblem--;
    }
    
  });
}
int _indexPrpblem=0;
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
                padding: EdgeInsets.all(24),
                margin: EdgeInsets.all(4),
                height: 400,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: 
                    [
                      Colors.pink,
                      Colors.white
                    ])
                ),

                child: Column(
              children: [
                Text(_listOfNPcompleteProblems[_indexPrpblem])
              ,
              Center(
                child: Row(
                  children: [
                    TextButton(onPressed: (){
                  previousProblem();
                }, child: Icon(Icons.navigate_before)
                    ),              
                  
                TextButton(
                  onPressed: (){
                       nextProblem();
                }, child: Icon(Icons.navigate_next)
                )
                  ],
                ),
              )
              ],
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