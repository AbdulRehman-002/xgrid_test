import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double width(context) {
    return MediaQuery.of(context).size.width;
  }

  double height(context) {
    return MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: height(context) * 0.05,
              horizontal: width(context) * 0.1),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.nightlight_outlined,
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.amber.shade700,
                    child: CircleAvatar(
                      backgroundColor: Colors.brown[900],
                      radius: 45,
                      child: Icon(
                        Icons.person_outline,
                        size: 40,
                        color: Colors.amber.shade700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  const Text(
                    "John Doe",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  Text(
                    "johndoe@example.com",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  Container(
                    width: 150,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber.shade500),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            // side: BorderSide(color: Colors.amber.shade500),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Upgrade to PRO',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  button(
                      context,
                      const Icon(Icons.policy_rounded, color: Colors.black),
                      "Privacy"),
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  button(
                      context,
                      const Icon(Icons.av_timer_rounded, color: Colors.black),
                      "Purchase History"),
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  button(
                      context,
                      const Icon(Icons.help_outline, color: Colors.black),
                      "Help & Support"),
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  button(
                      context,
                      const Icon(Icons.settings_outlined, color: Colors.black),
                      "Settings"),
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  button(
                    context,
                    const Icon(Icons.person_add_outlined, color: Colors.black),
                    "Invite a Friend",
                  ),
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    child: const ListTile(
                      title: Center(
                        child: Text(
                          "Logout",
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget button(BuildContext context, Icon leadingicon, String title) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 208, 212, 212)),
        child: ListTile(
          leading: leadingicon,
          title: Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
