import 'package:fasila/features/onbording/presentation/manager/onbording_cubit/onbording_cubit.dart';
import 'package:fasila/features/onbording/presentation/views/widget/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingPageViewWidget extends StatelessWidget {
  const OnboardingPageViewWidget({
    super.key,
    required this.pageController,
    required this.floatingAnimation,
  });

  final PageController pageController;
  final Animation<Offset> floatingAnimation;

  @override
  Widget build(BuildContext context) {
    final pages = context.read<OnboardingCubit>().pages;

    return PageView.builder(
      controller: pageController,
      itemCount: pages.length,
      onPageChanged: (index) =>
          context.read<OnboardingCubit>().changePage(index),
      itemBuilder: (context, index) {
        final pageData = pages[index];

        return AnimatedBuilder(
          animation: pageController,
          builder: (context, child) {
            double value = 1.0;
            if (pageController.position.haveDimensions) {
              value = (pageController.page! - index).abs();
              value = (1 - value.clamp(0.0, 1.0));
            }
            return Transform.scale(
              scale: value,
              child: AnimatedOpacity(
                opacity: value,
                duration: const Duration(milliseconds: 500),
                child: SlideTransition(
                  position: floatingAnimation,
                  child: OnboardingPage(
                    index: index,
                    title: pageData.title,
                    description: pageData.description,
                   images: pageData.images,
                  ),
                ),
              ),
            );
          },
        );
      },
      physics: const BouncingScrollPhysics(),
    );
  }
}
