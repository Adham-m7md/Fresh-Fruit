import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/utils/app_colors.dart';
import 'package:fresh_fruit/core/utils/app_svg_images.dart';
import 'package:fresh_fruit/core/utils/app_text_styles.dart';
import 'package:fresh_fruit/features/on_boarding/presentation/widgets/page_view_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: 'assets/images/onboarding1.png',
          backGroundImage: Assets.imagesBackgroundOnboarding1,
          description:
              'اكتشف تجربة تسوق فريدة مع FreshFruit. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          titel: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('مرحبًا بك في', style: TextStyles.bold23),
              const SizedBox(
                width: 12,
              ),
              Text('Fruit',
                  style:
                      TextStyles.bold23.copyWith(color: AppColors.kRedColor)),
              Text('Fresh',
                  style:
                      TextStyles.bold23.copyWith(color: AppColors.kYellowColor))
            ],
          ),
        ),
        const PageViewItem(
          isVisible: false,
          image: 'assets/images/onboarding2.png',
          backGroundImage: Assets.imagesBackgroundOnboarding2,
          description:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          titel: Text('ابحث وتسوق', style: TextStyles.bold23),
        )
      ],
    );
  }
}
