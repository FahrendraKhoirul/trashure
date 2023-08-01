import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NavbarView extends GetView {
  const NavbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavbarView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NavbarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
