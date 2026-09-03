import 'package:flutter/material.dart';
import 'package:hubx_case/core/di/app_container.dart';
import 'package:hubx_case/data/models/category_model.dart';
import 'package:hubx_case/data/repositories/home_repository.dart';
import 'package:hubx_case/extensions/build_context_extension.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CategoryDetailPage extends StatelessWidget {
  final CategoryModel category;

  const CategoryDetailPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColorScheme.backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                category.title,
                style: context.appStyle.roboto16Medium.copyWith(
                  color: context.appColorScheme.textColor,
                ),
              ),
              background: Hero(
                tag: 'category_${category.id}',
                child: CachedNetworkImage(imageUrl: category.imageUrl, fit: BoxFit.cover),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: FutureBuilder<CategoryModel>(
              future: AppContainer.getIt<HomeRepository>().getCategory(category.id),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Padding(
                    padding: EdgeInsets.all(40),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                if (snapshot.hasError) {
                  return Padding(
                    padding: const EdgeInsets.all(40),
                    child: Center(
                      child: Text(
                        "Error loading details",
                        style: context.appStyle.roboto16Medium.copyWith(
                          color: context.appColorScheme.errorColor,
                        ),
                      ),
                    ),
                  );
                }

                final detail = snapshot.data ?? category;

                return Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About ${detail.title}",
                        style: context.appStyle.roboto28Medium,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Name: ${detail.name}\n"
                        "ID: ${detail.id}\n",
                        style: context.appStyle.roboto16Regular.copyWith(
                          color: context.appColorScheme.black70,
                        ),
                      ),
                    ],
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
