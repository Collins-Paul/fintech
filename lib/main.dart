import 'package:flutter/material.dart';

void main() {
   runApp(const FinTech());
}

class FinTech extends StatefulWidget {
  const FinTech({super.key});

  @override
  State<FinTech> createState() => _FinTechState();
}

class _FinTechState extends State<FinTech> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Container(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Column(
                        children: [
                            const Text('Wallet', 
                                style: TextStyle(
                                  fontSize: 25.0
                                ),
                            ),
                            const Text('N0.00',
                                  style: TextStyle(
                                  fontSize: 38.0,
                                  fontWeight: FontWeight.bold
                                ),),
                            Row(
                              children: [
                                Container(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: const ElevatedButton(onPressed: null, 
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                                    ),
                                    child: Text('Credit', 
                                      style: TextStyle(
                                        color: Colors.white
                                      ),
                                    )
                                  ),
                                ),
                                Container(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: const ElevatedButton(onPressed: null, 
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                                    ),
                                    child: Text('Debit',  
                                      style: TextStyle(
                                        color: Colors.white
                                      ),)
                                  ),
                                )
                              ],
                            ),
                        ],
                      ),
                    )
                  ],
              ),
            // History goes here
            Container(
              margin: const EdgeInsets.only(left: 15.5, right: 15.5, top: 15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('History',
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                      Text('0',
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                    ],
              ),
            )
          ],
        ),
        ),
    );
  }
}