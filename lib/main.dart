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
                            const Text('Wallet Balance', 
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
                                Container (
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: const ElevatedButton(onPressed: null, 
                                    style:  ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                                    ),
                                    child:  Text('Credit', 
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
            ),

            // Transaction history card 
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(width: 5.0, color: Colors.green)
                ),
              color: Color.fromARGB(255, 228, 230, 230),
              ),
              padding: const EdgeInsets.all(10.5),
              margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 6.0),
                        child: Text('Credit',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                      Text('Date: _______'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 6.0),
                        child: Text('+1,200.00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                      Text('Ref: ______')
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        ),
    );
  }
}
