import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_crypto_app/controllers/assets_controller.dart';
import 'package:getx_crypto_app/widgets/add_asset_dialog.dart';

class HomePage extends StatelessWidget {
  AssetsController assetsController = Get.find();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(
        context,
      ),
      body: _buildUI(
        context,
      ),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      title: const CircleAvatar(
        backgroundImage: NetworkImage(
          "https://imgv3.fotor.com/images/ai-headshot-generator/AI-generated-business-headshot-of-a-smiling-female-with-long-brown-hair-in-dark-business-attire-by-Fotor.jpg",
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Get.dialog(
              AddAssetDialog(),
            );
          },
          icon: const Icon(
            Icons.add,
          ),
        )
      ],
    );
  }

  Widget _buildUI(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Column(
          children: [
            _portfolioValue(
              context,
            ),
          ],
        ),
      ),
    );
  }

  Widget _portfolioValue(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.sizeOf(context).height * 0.03,
      ),
      child: Center(
        child: Text.rich(
          TextSpan(
            children: [
              const TextSpan(
                text: "\$",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: "${assetsController.getPortfolioValue()}",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
