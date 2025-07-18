import 'package:fasila/features/home/presentation/view/widgets/lastes_product_widget.dart';
import 'package:fasila/features/product_details/presentation/manager/quantity_cubit/quantity_cubit.dart';
import 'package:fasila/features/product_details/presentation/view/widget/add_to_cart_button_and_quantity_widget.dart';
import 'package:fasila/features/product_details/presentation/view/widget/image_and_description_details_widget.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuantityCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Scaffold(
          bottomNavigationBar: AddToCartButtonAndQuantityWidget(
            productModel: productModel,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ImageAndDescriptionDetailsWidget(productModel: productModel),
                const SizedBox(height: 10),
                LastesProductWidget(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
