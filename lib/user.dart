import 'package:flutter/material.dart';
import 'package:sormimini/orderpage.dart';

import 'completedoderpage.dart';
import 'inprogresspage.dart';


class Userpage extends StatefulWidget {
  const Userpage({super.key});

  @override
  State<Userpage> createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> 
 with SingleTickerProviderStateMixin {
  int _counter = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  int _counter4 = 0;
  int _counter5 = 0;
  int _counter6 = 0;
  int _counter7 = 0;
  int _counter8 = 0;
  int _counter9 = 0;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }
  void _incrementCounter2(){
    setState(() {
      _counter2++;
    });
  }
  void _decrementCounter2(){
    setState(() {
      _counter2--;
    });
  }
  void _incrementCounter3(){
    setState(() {
      _counter3++;
    });
  }
  void _decrementCounter3(){
    setState(() {
      _counter3--;
    });
  }
  void _incrementCounter4(){
    setState(() {
      _counter4++;
    });
  }
  void _decrementCounter4(){
    setState(() {
      _counter4--;
    });
  }
  void _incrementCounter5(){
    setState(() {
      _counter5++;
    });
  }
  void _decrementCounter5(){
    setState(() {
      _counter5--;
    });
  }
  void _incrementCounter6(){
    setState(() {
      _counter6++;
    });
  }
  void _decrementCounter6(){
    setState(() {
      _counter6--;
    });
  }
  void _incrementCounter7(){
    setState(() {
      _counter7++;
    });
  }
  void _decrementCounter7(){
    setState(() {
      _counter7--;
    });
  }
  void _incrementCounter8(){
    setState(() {
      _counter8++;
    });
  }
  void _decrementCounter8(){
    setState(() {
      _counter8--;
    });
  }
  void _incrementCounter9(){
    setState(() {
      _counter9++;
    });
  }
  void _decrementCounter9(){
    setState(() {
      _counter9--;
    });
  }
  

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      initialIndex: 1,
      vsync: this
    );
  }

  TabController? _tabController;
 @override
      
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Orderpage()));
            },
            icon: const Icon(Icons.person),
            color: Colors.green,
          )
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.green,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Order Veggies',
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.white,
        bottom: TabBar(
          labelColor: Colors.black,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: 'New Order',
            ),
            Tab(
              text: 'In Progress',
            ),
            Tab(
              text: 'Completed',
            ),
          ],
        ),
      ),
      drawer: const Drawer(),
      body: TabBarView(
        controller: _tabController,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              // Text(
                              //   'Order no #1190',
                              //   textAlign: TextAlign.left,
                              //   style: TextStyle(fontWeight: FontWeight.bold),
                              // ),
                            ],
                          ),
                        ),
                        
                        ListTile(
                          // leading: Image.asset(
                          //   "assets/Photo.jpeg",
                          // ),
                          title: const Text(
                            'Potato',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                          ),
                          subtitle: const Text('1 KG'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text(
                                '₹60', style: TextStyle(fontSize: 18),
                                
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _decrementCounter,
                                  child: const Text(
                                    '-',
                                    style: TextStyle(color: Colors.green,fontSize: 37),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.green, width: 1))),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _incrementCounter,
                                  child: const Text('+',
                                      style: TextStyle(color: Colors.white,fontSize: 37)),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0))),
                                  ),
                                ),
                                
                              ),
                              Expanded(
                                child: Text('$_counter',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
                                
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              // Text(
                              //   'Order no #1190',
                              //   textAlign: TextAlign.left,
                              //   style: TextStyle(fontWeight: FontWeight.bold),
                              // ),
                            ],
                          ),
                        ),
                        
                        ListTile(
                          // leading: Image.asset(
                          //   "assets/Photo.jpeg",
                          // ),
                          title: const Text(
                            'Tomato',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                          ),
                          subtitle: const Text('1 KG'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text(
                                '₹70', style: TextStyle(fontSize: 18),
                                
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _decrementCounter2,
                                  child: const Text(
                                    '-',
                                    style: TextStyle(color: Colors.green,fontSize: 37),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.green, width: 1))),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _incrementCounter2,
                                  child: const Text('+',
                                      style: TextStyle(color: Colors.white,fontSize: 37)),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0))),
                                  ),
                                ),
                                
                              ),
                              Expanded(
                                child: Text('$_counter2',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
                                
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              // Text(
                              //   'Order no #1190',
                              //   textAlign: TextAlign.left,
                              //   style: TextStyle(fontWeight: FontWeight.bold),
                              // ),
                            ],
                          ),
                        ),
                        
                        ListTile(
                          // leading: Image.asset(
                          //   "assets/Photo.jpeg",
                          // ),
                          title: const Text(
                            'Onion',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                          ),
                          subtitle: const Text('1 KG'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text(
                                '₹90', style: TextStyle(fontSize: 18),
                                
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _decrementCounter3,
                                  child: const Text(
                                    '-',
                                    style: TextStyle(color: Colors.green,fontSize: 37),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.green, width: 1))),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _incrementCounter3,
                                  child: const Text('+',
                                      style: TextStyle(color: Colors.white,fontSize: 37)),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0))),
                                  ),
                                ),
                                
                              ),
                              Expanded(
                                child: Text('$_counter3',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
                                
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              // Text(
                              //   'Order no #1190',
                              //   textAlign: TextAlign.left,
                              //   style: TextStyle(fontWeight: FontWeight.bold),
                              // ),
                            ],
                          ),
                        ),
                        
                        ListTile(
                          // leading: Image.asset(
                          //   "assets/Photo.jpeg",
                          // ),
                          title: const Text(
                            'Apple',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                          ),
                          subtitle: const Text('1 KG'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text(
                                '₹120', style: TextStyle(fontSize: 18),
                                
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _decrementCounter4,
                                  child: const Text(
                                    '-',
                                    style: TextStyle(color: Colors.green,fontSize: 37),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.green, width: 1))),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _incrementCounter4,
                                  child: const Text('+',
                                      style: TextStyle(color: Colors.white,fontSize: 37)),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0))),
                                  ),
                                ),
                                
                              ),
                              Expanded(
                                child: Text('$_counter4',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
                                
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              // Text(
                              //   'Order no #1190',
                              //   textAlign: TextAlign.left,
                              //   style: TextStyle(fontWeight: FontWeight.bold),
                              // ),
                            ],
                          ),
                        ),
                        
                        ListTile(
                          // leading: Image.asset(
                          //   "assets/Photo.jpeg",
                          // ),
                          title: const Text(
                            'Banana',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                          ),
                          subtitle: const Text('1 KG'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text(
                                '₹60', style: TextStyle(fontSize: 18),
                                
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _decrementCounter5,
                                  child: const Text(
                                    '-',
                                    style: TextStyle(color: Colors.green,fontSize: 37),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.green, width: 1))),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _incrementCounter5,
                                  child: const Text('+',
                                      style: TextStyle(color: Colors.white,fontSize: 37)),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0))),
                                  ),
                                ),
                                
                              ),
                              Expanded(
                                child: Text('$_counter5',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
                                
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              // Text(
                              //   'Order no #1190',
                              //   textAlign: TextAlign.left,
                              //   style: TextStyle(fontWeight: FontWeight.bold),
                              // ),
                            ],
                          ),
                        ),
                        
                        ListTile(
                          // leading: Image.asset(
                          //   "assets/Photo.jpeg",
                          // ),
                          title: const Text(
                            'Broccoli',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                          ),
                          subtitle: const Text('1 KG'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text(
                                '₹350', style: TextStyle(fontSize: 18),
                                
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _decrementCounter6,
                                  child: const Text(
                                    '-',
                                    style: TextStyle(color: Colors.green,fontSize: 37),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.green, width: 1))),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _incrementCounter6,
                                  child: const Text('+',
                                      style: TextStyle(color: Colors.white,fontSize: 37)),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0))),
                                  ),
                                ),
                                
                              ),
                              Expanded(
                                child: Text('$_counter6',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
                                
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              // Text(
                              //   'Order no #1190',
                              //   textAlign: TextAlign.left,
                              //   style: TextStyle(fontWeight: FontWeight.bold),
                              // ),
                            ],
                          ),
                        ),
                        
                        ListTile(
                          // leading: Image.asset(
                          //   "assets/Photo.jpeg",
                          // ),
                          title: const Text(
                            'Watermelon',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                          ),
                          subtitle: const Text('1 KG'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text(
                                '₹50', style: TextStyle(fontSize: 18),
                                
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _decrementCounter7,
                                  child: const Text(
                                    '-',
                                    style: TextStyle(color: Colors.green,fontSize: 37),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.green, width: 1))),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _incrementCounter7,
                                  child: const Text('+',
                                      style: TextStyle(color: Colors.white,fontSize: 37)),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0))),
                                  ),
                                ),
                                
                              ),
                              Expanded(
                                child: Text('$_counter7',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
                                
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              // Text(
                              //   'Order no #1190',
                              //   textAlign: TextAlign.left,
                              //   style: TextStyle(fontWeight: FontWeight.bold),
                              // ),
                            ],
                          ),
                        ),
                        
                        ListTile(
                          // leading: Image.asset(
                          //   "assets/Photo.jpeg",
                          // ),
                          title: const Text(
                            'Avocado',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                          ),
                          subtitle: const Text('1 KG'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text(
                                '₹250', style: TextStyle(fontSize: 18),
                                
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _decrementCounter8,
                                  child: const Text(
                                    '-',
                                    style: TextStyle(color: Colors.green,fontSize: 37),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.green, width: 1))),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _incrementCounter8,
                                  child: const Text('+',
                                      style: TextStyle(color: Colors.white,fontSize: 37)),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0))),
                                  ),
                                ),
                                
                              ),
                              Expanded(
                                child: Text('$_counter8',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
                                
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              // Text(
                              //   'Order no #1190',
                              //   textAlign: TextAlign.left,
                              //   style: TextStyle(fontWeight: FontWeight.bold),
                              // ),
                            ],
                          ),
                        ),
                        
                        ListTile(
                          // leading: Image.asset(
                          //   "assets/Photo.jpeg",
                          // ),
                          title: const Text(
                            '',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                          ),
                          subtitle: const Text('1 KG'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text(
                                '₹', style: TextStyle(fontSize: 18),
                                
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _decrementCounter9,
                                  child: const Text(
                                    '-',
                                    style: TextStyle(color: Colors.green,fontSize: 37),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.green, width: 1))),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _incrementCounter9,
                                  child: const Text('+',
                                      style: TextStyle(color: Colors.white,fontSize: 37)),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0))),
                                  ),
                                ),
                                
                              ),
                              Expanded(
                                child: Text('$_counter9',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),)
                                
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Inprogress(),
          const Completedoderpage(),
        ],
      ),
    );
  }
}