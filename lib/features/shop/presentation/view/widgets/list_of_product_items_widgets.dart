import 'package:fasila/features/shop/presentation/manager/product_cubit/product_cubit.dart';
import 'package:fasila/features/shop/presentation/view/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfProductItemsWidgets extends StatelessWidget {
  const ListOfProductItemsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ProductFailedState) {
          return Text(state.error);
        } else if (state is ProductSuccessState) {
          return Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                final product = state.products[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ProductItemWidget(product: product),
                );
              },
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 15),
              itemCount: state.products.length,
            ),
          );
        } else {
          return const Text("Something went wrong.");
        }
      },
    );
  }
}
