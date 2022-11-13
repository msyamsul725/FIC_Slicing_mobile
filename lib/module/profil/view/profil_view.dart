import 'package:flutter/material.dart';
import '../controller/profil_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class ProfilView extends StatelessWidget {
  const ProfilView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfilController>(
      init: ProfilController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Profil"),
          ),
          body: ListView(
            children: const [
              //body
            ],
          ),
        );
      },
    );
  }
}