part of '../pages/home_page.dart';

class _HomeShimmerLoading extends StatelessWidget {
  const _HomeShimmerLoading();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.appColorScheme.shimmerBase,
      highlightColor: context.appColorScheme.shimmerHighlight,
      child: Column(
        spacing: 24,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Premium Box shimmer
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              height: 64,
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.appColorScheme.white,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          // Horizontal list (Questions) shimmer
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  width: 240,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    color: context.appColorScheme.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                );
              },
            ),
          ),

          // Grid (Categories) shimmer
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.1,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: context.appColorScheme.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
