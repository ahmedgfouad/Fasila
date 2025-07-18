import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(AppImages.logoImage),
        actions: [NotificationAndCartIconsWidget()],
      ),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}

class NotificationAndCartIconsWidget extends StatelessWidget {
  const NotificationAndCartIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => GoRouter.of(context).push(AppRouter.kNotificationView),
          child: SvgPicture.asset(AppImages.notificationIcon),
        ),
        const SizedBox(width: 8),
        InkWell(
          onTap: () => GoRouter.of(context).push(AppRouter.kCartView),
          child: SvgPicture.asset(AppImages.cartIcon),
        ),
        const SizedBox(width: 12),
      ],
    );
  }
}
