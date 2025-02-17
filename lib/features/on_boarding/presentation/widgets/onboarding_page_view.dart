import 'package:flutter/material.dart';
import 'package:fresh_fruit/core/utils/app_svg_images.dart';
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
      children: const [
        PageViewItem(
          isVisible: true,
          image: 'assets/images/onboarding1.png',
          backGroundImage: Assets.imagesBackgroundOnboarding1,
          description:
              'اكتشف تجربة تسوق فريدة مع FreshFruit. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          titel: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبًا بك في',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                'Fruit',
                style: TextStyle(
                  color: Color(0xffCB4835),
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Fresh',
                style: TextStyle(
                  color: Color(0xffFEC440),
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        PageViewItem(
          isVisible: false,
          image: 'assets/images/onboarding2.png',
          backGroundImage: Assets.imagesBackgroundOnboarding2,
          description:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          titel: Text(
            'ابحث وتسوق',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ],
    );
  }
}
