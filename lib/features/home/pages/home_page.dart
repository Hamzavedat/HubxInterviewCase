import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:hubx_case/extensions/build_context_extension.dart';
import 'package:hubx_case/features/home/bloc/home_cubit.dart';
import 'package:hubx_case/core/constants/app_routes.dart';
import 'package:hubx_case/core/constants/app_assets.dart';
import 'package:hubx_case/data/models/category_model.dart';
import 'package:hubx_case/data/models/question_model.dart';

part '../widgets/home_shimmer_loading.dart';
part '../widgets/home_header.dart';
part '../widgets/home_questions_list.dart';
part '../widgets/home_categories_grid.dart';
part '../widgets/home_premium_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColorScheme.backgroundColor,
      body: SafeArea(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return RefreshIndicator(
              onRefresh: () => context.read<HomeCubit>().refreshData(),
              color: context.appColorScheme.primaryColor,
              backgroundColor: context.appColorScheme.white,
              child: CustomScrollView(
                slivers: [
                  SliverPersistentHeader(pinned: true, delegate: _HomeHeaderDelegate()),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Column(
                        spacing: 24,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (state is HomeLoading || state is HomeInitial) ...[
                            const _HomeShimmerLoading(),
                          ] else if (state is HomeLoaded) ...[
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24),
                              child: _HomePremiumBox(
                                onTap: () {
                                  Navigator.pushNamed(context, AppRoutes.paywall);
                                },
                              ),
                            ),
                            if (state.questions.isNotEmpty) ...[
                              _HomeQuestionsList(questions: state.questions),
                            ],
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24),
                              child: _HomeCategoriesGrid(categories: state.categories),
                            ),
                          ] else if (state is HomeError) ...[
                            Center(
                              child: Text(
                                "Error: ${state.message}",
                                style: context.appStyle.roboto16Medium.copyWith(
                                  color: context.appColorScheme.errorColor,
                                ),
                              ),
                            ),
                          ],
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
