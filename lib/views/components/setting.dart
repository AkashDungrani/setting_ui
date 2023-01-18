import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../models/Globals.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.centerLeft,
            height:50 ,
            color:(isIos==false)?Colors.white :CupertinoColors.systemGrey5,
            width: double.infinity,
            child: Text(
              'Common',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: (isIos == false) ? Colors.deepOrange : CupertinoColors.systemGrey,
                  fontSize: 18),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ...(isIos == false)
              ? androidcommon.map(
                  (e) => Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            e['icon'],
                            size: 40,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e['name'],
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                e['des'],
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ).toList()
              : ioscommon.map(
                  (e) => Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            e['icon'],
                            size: 40,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            e['name'],
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Spacer(),
                          Text(
                            e['des'],
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          Icon(
                            Icons.navigate_next,
                            size: 40,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ).toList(),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.centerLeft,
            height: 50,
            color:
                (isIos == false) ? Colors.white : CupertinoColors.systemGrey5,
            width: double.infinity,
            child: Text(
              'Account',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: (isIos == false) ? Colors.deepOrange : CupertinoColors.systemGrey,
                  fontSize: 18),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ...(isIos == false)
              ? androidaccount.map(
                  (e) => Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            e['icon'],
                            size: 40,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            e['name'],
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                ).toList()
              : iosaccount.map(
                  (e) => Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            e['icon'],
                            size: 40,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            e['name'],
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                ).toList(),
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.centerLeft,
            height: 50,
            color:
                (isIos == false) ? Colors.white : CupertinoColors.systemGrey5,
            width: double.infinity,
            child: Text(
              'Security',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: (isIos == false) ? Colors.deepOrange : CupertinoColors.systemGrey,
                  fontSize: 18),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ...Security.map(
            (e) => Column(
              children: [
                Row(
                  children: [
                    Icon(
                      e['icon'],
                      size: 40,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      e['name'],
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    (isIos == false)
                        ? Switch(
                            activeColor: Colors.deepOrange,
                            value: e['value'],
                            onChanged: (val) {
                              setState(() {
                                e['value'] = val;
                              });
                            })
                        : CupertinoSwitch(
                            activeColor: Colors.deepOrange,
                            value: e['value'],
                            onChanged: (val) {
                              setState(() {
                                e['value'] = val;
                              });
                            }),
                  ],
                ),
                Divider(thickness: 1,
                  // color: Colors.grey,
                ),
              ],
            ),
          ).toList(),
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.centerLeft,
            height: 50,
            color:
                (isIos == false) ? Colors.white : CupertinoColors.systemGrey5,
            width: double.infinity,
            child: Text(
              'Misc',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: (isIos == false) ? Colors.deepOrange : CupertinoColors.systemGrey,
                  fontSize: 18),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ...Misc.map(
            (e) => Column(
              children: [
                Row(
                  children: [
                    Icon(
                      e['icon'],
                      size: 40,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      e['name'],
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
              ],
            ),
          ).toList(),
        ],
      ),
    );
  }
}
