import 'package:flutter/material.dart';
import 'package:sormimini/loginpage.dart';

import 'orderpage.dart';


class Profilepage extends StatefulWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override

  final _textFieldController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Orderpage()));
          },
          icon: const Icon(Icons.home),
          color: Colors.green,
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'My Account',
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Image.asset('assets/images/anjali.jpg'),
                      title: const Text('Anjali Gangera'),
                      subtitle: const Text('anjaligangera@gmail.com'),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('My information'),
                trailing: IconButton(
                    onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Anjali Gangera'),
          content: const Text('Mobile No. : +91 6351220597'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Back'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
                    icon: const Icon(Icons.arrow_forward_ios)),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Change Password'),
                trailing: IconButton(
                    onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Set new Password'),
          content: TextField(
            onChanged: (value) {
     
            },
            controller: _textFieldController,
            decoration: InputDecoration(hintText: "Password"),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
          ),

          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Back'),
              child: const Text('Back'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
                    icon: const Icon(Icons.arrow_forward_ios)),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () { Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  LoginPage()));},
                    icon: const Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


