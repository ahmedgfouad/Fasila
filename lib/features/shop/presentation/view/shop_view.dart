import 'package:fasila/core/widgets/custom_serch_widget.dart';
import 'package:fasila/features/shop/presentation/view/widgets/shop_view_body.dart';
import 'package:flutter/material.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: CustomSearchWidget()),
        body: ShopViewBody(),
      ),
    );
  }
}
