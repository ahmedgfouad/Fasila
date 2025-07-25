part of 'favorire_product_cubit.dart';

sealed class FavorireProductState {}

final class FavorireProductInitial extends FavorireProductState {}

final class FavorireProductLoadingState extends FavorireProductState {}

final class FavorireProductSuccessState extends FavorireProductState {
  final List<ProductModel> favoriteProducts;
  FavorireProductSuccessState(this.favoriteProducts);
}

final class FavorireProductFailedState extends FavorireProductState {
  final String error;

  FavorireProductFailedState(this.error);
}


  final class DeleteFromFavoriteLoadingState extends FavorireProductState {}

final class DeleteFromFavoriteSuccessState extends FavorireProductState {}

final class DeleteFromFavoriteFailedState extends FavorireProductState {
  final String error;

  DeleteFromFavoriteFailedState(this.error);
}
