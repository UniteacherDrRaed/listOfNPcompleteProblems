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
     else
    {
      ScaffoldMessenger.of(context).
      showSnackBar(const SnackBar(
        content: Text("this is the last one in this  list")
        ,backgroundColor:Colors.blue));
    
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
    else
    {
      ScaffoldMessenger.of(context).
      showSnackBar(const SnackBar(
        content: Text("this is the first one in this  list")
        ,backgroundColor:Colors.blue));
    
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
              icon: Icon(Icons.list),
            ),
            Tab(
              text: "refences",
              icon: Icon(Icons.book),
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
                Text(_listOfNPcompleteProblems[_indexPrpblem],
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellowAccent,
                 ),)
              ,
             
      
              Row(

                children: [
                  TextButton(onPressed: (){
                previousProblem();
              }, child: const Icon(Icons.navigate_before
              ,size: 34,
              color: Colors.yellowAccent,)
                  ),              
                
              TextButton(
                onPressed: (){
                     nextProblem();
              }, child: const Icon(Icons.navigate_next,size: 34,
              color: Colors.yellowAccent,)
              )
                ],
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
             child: 
             Text("Cormen, Thomas H.; Leiserson, Charles E.; Rivest, Ronald L.; Stein, Clifford (2022) [1990]. Introduction to Algorithms (4th ed.). MIT Press and McGraw-Hill. ISBN 0-262-04630-X. "),
              )
            ],
          ),
      ),
    );
  }
}