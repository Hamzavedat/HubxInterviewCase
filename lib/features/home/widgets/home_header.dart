part of '../pages/home_page.dart';

class _HomeHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight = 175.0;
  final double collapsedHeight = 100.0;

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => collapsedHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final progress = shrinkOffset / (maxExtent - minExtent);
    final searchOpacity = 1.0 - progress.clamp(0.0, 1.0);

    return Container(
      decoration: BoxDecoration(
        color: context.appColorScheme.backgroundColor,
        image: const DecorationImage(
          image: AssetImage(AppAssets.bgHomeHeader),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, plant lover!",
                  style: context.appStyle.roboto16Regular.copyWith(height: 1.25),
                ),
                const SizedBox(height: 6),
                Text(
                  "Good Afternoon! ⛅",
                  style: context.appStyle.roboto24Medium.copyWith(height: 1.2),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: searchOpacity,
              child: Card(
                elevation: 0,
                shadowColor: context.appColorScheme.black05,
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  onChanged: (value) => context.read<HomeCubit>().search(value),
                  style: context.appStyle.roboto16Regular.copyWith(
                    color: context.appColorScheme.textColor,
                  ),
                  decoration: context.appStyle.searchInputDecoration("Search for plants"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
