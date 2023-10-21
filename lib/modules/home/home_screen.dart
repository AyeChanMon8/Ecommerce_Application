import 'package:flutter/material.dart';

import '../../../core/router_name.dart';
import '../../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = '48th street Botahtaung';
    return Scaffold(
      backgroundColor: homebgColor,
      appBar: AppBar(
          title: Center(
              child: Column(
            children: [
              Text('Deliver To'),
              DropdownButton<String>(
                value: dropdownValue,
                isDense: true,
                underline: Container(color: Colors.transparent),
                // Step 4.
                items: <String>['48th street Botahtaung', '50th street Botahtaung']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 12),
                    ),
                  );
                }).toList(),
                // Step 5.
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ),
            ],
          )),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.account_circle),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                        size: 30,
                      ),
                    ),
                  ],
                ))
          ]),
      body: CustomScrollView(
        slivers: [],
      ),
    );
  }
}
