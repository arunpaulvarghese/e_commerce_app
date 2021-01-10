class OnboardingItem {
  final String title;
  final String subTitle;
  final String image;

  const OnboardingItem({this.title, this.subTitle, this.image});
}

class OnboardingItems {
  static List<OnboardingItem> getOnBoardingItems() {
    const items = <OnboardingItem>[
      OnboardingItem(
          title: 'Modular Planters',
          subTitle: 'Designed to form the artificial environment of any plant',
          image: 'images/illustration_1.png'),
      OnboardingItem(
          title: 'Title 2',
          subTitle: 'Sub-title text 2',
          image: 'images/illustration_2.png'),
      OnboardingItem(
          title: 'Title 3',
          subTitle: 'Sub-title text 3',
          image: 'images/illustration_3.png'),
    ];

    return items;
  }
}
