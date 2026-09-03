part of '../pages/home_page.dart';

class _HomeCategoriesGrid extends StatelessWidget {
  final List<CategoryModel> categories;

  const _HomeCategoriesGrid({required this.categories});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.1,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final cat = categories[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(AppRoutes.categoryDetail, arguments: cat);
          },
          child: Container(
            decoration: BoxDecoration(
              color: context.appColorScheme.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: context.appColorScheme.text2Color10),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Text(cat.title, style: context.appStyle.roboto16Medium),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(16),
                    ),
                    child: Hero(
                      tag: 'category_${cat.id}',
                      child: CachedNetworkImage(
                        imageUrl: cat.imageUrl,
                        width: 200,
                        height: 200,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
