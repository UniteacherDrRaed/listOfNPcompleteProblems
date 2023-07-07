import 'package:flutter/material.dart';

Widget referenceteil()=> Container(
                  decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: 
                    [
                      
                      Colors.white,
                      Colors.pink
                    ])
                ),
             child: 
             Container(
              padding: const EdgeInsets.all(34),
               child: const Text("Cormen, Thomas H.; Leiserson, Charles E.; Rivest, Ronald L.; Stein, Clifford (2022) [1990]. Introduction to Algorithms (4th ed.). MIT Press and McGraw-Hill. ISBN 0-262-04630-X. ",
               style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                   ),
                   ),
             )
                 ,
              );