// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, use_build_context_synchronously

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cricket/models/cricket/cricket.dart';
import 'package:cricket/services/api_services.dart';
import 'package:cricket/utils/colors.dart';
import 'package:cricket/utils/constant.dart';
import 'package:cricket/views/details_screen.dart/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late StreamSubscription subscription;

  bool isDeviceConnected = false;

  bool isAlertSet = false;

  @override
  void initState() {
    getConnectivity();
    super.initState();
  }

  getConnectivity() =>
      subscription = Connectivity().onConnectivityChanged.listen(
        (ConnectivityResult result) async {
          isDeviceConnected = await InternetConnectionChecker().hasConnection;
          if (!isDeviceConnected && isAlertSet == false) {
            showDialogBox(context);
            setState(() => isAlertSet = true);
          }
        },
      );

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  showDialogBox(BuildContext context) => showCupertinoDialog<String>(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text('No Connection'),
          content: const Text('Please check your internet connectivity'),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                Navigator.pop(context, 'Cancel');
                setState(() => isAlertSet = false);
                isDeviceConnected =
                    await InternetConnectionChecker().hasConnection;
                if (!isDeviceConnected && isAlertSet == false) {
                  showDialogBox(context);
                  setState(() => isAlertSet = true);
                }
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CardWidget(
                url: url1,
              ),
              SizedBox(
                height: 20,
              ),
              CardWidget(
                url: url2,
              ),
              SizedBox(
                height: 20,
              ),
              CardWidget(
                url: url3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiServices().getData(url),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Text('Loading...');
          }
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailsPage(cricket: snapshot.data!),
              ));
            },
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleFlag(
                          img: snapshot.data!.response.teams![0].logoUrl!,
                          country:
                              snapshot.data!.response.teams![0].shortName!),
                      Column(
                        children: [
                          Text('PAYTM T20', style: TextStyle(fontSize: 16)),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                    Colors.white,
                                    darkBlue,
                                    darkBlue,
                                    darkBlue,
                                    Colors.white
                                  ])),
                                  height: 8,
                                  width: 100,
                                ),
                                CircleAvatar(
                                  child: Text(
                                    'V/S',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  radius: 15,
                                  backgroundColor: darkBlue,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            getDate(snapshot.data!),
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          )
                        ],
                      ),
                      CircleFlag(
                          img: snapshot.data!.response.teams![1].logoUrl!,
                          country:
                              snapshot.data!.response.teams![1].shortName!),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          );
        });
  }
}

String getDate(Cricket model) {
  String stringDate = DateFormat('MMMM-dd-yyyy')
      .format(DateTime.parse(model.datetime.substring(0, 10)))
      .toString()
      .replaceAll('-', ' ');

  return stringDate;
}

// getTeam(Cricket model,) {
//   int battingTeamId = model.response!.innings![0].battingTeamId!;
//   int fieldingTeamId = model.response!.innings![1].fieldingTeamId!;

// }

class CircleFlag extends StatelessWidget {
  const CircleFlag({super.key, required this.img, required this.country});
  final String img;
  final String country;
  // final Cricket model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(img),
          radius: 30,
        ),
        SizedBox(
          height: 5,
        ),
        Text(country,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
      ],
    );
  }
}
