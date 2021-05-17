
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_internative/pages/components/loading_overlay.dart';

import 'components/details_list_item.dart';
import 'detail_controller.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Container(
        child: GetBuilder<DetailsController>(
          builder: (controller) {
            return LoadingOverlay(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.detailsList.length,
                itemBuilder: (context, index) => DetailsListItem(
                  detail: controller.detailsList[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}