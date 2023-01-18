import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> androidcommon = [
  {
    'icon': Icons.language_outlined,
    'name': 'Language',
    'des': 'English',
  },
  {
    'icon': Icons.cloud_outlined,
    'name': 'Environment',
    'des': 'Production',
  },
];
List<Map<String, dynamic>> ioscommon = [
  {
    'icon': CupertinoIcons.globe,
    'name': 'Language',
    'des': 'English',
  },
  {
    'icon': CupertinoIcons.cloud,
    'name': 'Environment',
    'des': 'Production',
  },
];
List<Map<String, dynamic>> androidaccount = [
  {
    'icon': Icons.phone,
    'name': 'Phone Number',
  },
  {
    'icon': Icons.email,
    'name': 'Email',
  },
  {
    'icon': Icons.exit_to_app,
    'name': 'Sign out',
  },
];
List<Map<String, dynamic>> iosaccount = [
  {
    'icon': CupertinoIcons.phone,
    'name': 'Phone Number',
  },
  {
    'icon': CupertinoIcons.mail,
    'name': 'Email',
  },
  {
    'icon': Icons.exit_to_app,
    'name': 'Sign out',
  },
];
List<Map<String, dynamic>> Security = [
  {
    'icon': Icons.phonelink_lock,
    'name': 'Lock app in background',
    'value': false,
  },
  {
    'icon': Icons.fingerprint,
    'name': 'Use fingerprint',
    'value': true,
  },
  {
    'icon': Icons.lock,
    'name': 'Change password',
    'value': false,
  },
];
List<Map<String, dynamic>> Misc = [
  {
    'icon': Icons.file_open_outlined,
    'name': 'Terms of Service',
  },
  {
    'icon': Icons.collections_bookmark_sharp,
    'name': 'Open source licenses',
  },
];
