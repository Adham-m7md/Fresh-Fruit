import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fresh_fruit/core/utils/svg_images.dart';
import 'package:fresh_fruit/features/on_boarding/presentation/widgets/page_view_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(
          image: 'assets/images/onboarding1.png',
          backGroundImage: Assets.imagesBackgroundOnboarding1,
          description:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          titel: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبًا بك في'),
              Text('Fresh'),
              Text(
                'Fruit',
              )
            ],
          ),
        ),
        PageViewItem(
            image: 'assets/images/onboarding2.png',
            backGroundImage: Assets.imagesBackgroundOnboarding2,
            description:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            titel: Text('ابحث وتسوق'))
      ],
    );
  }
}
