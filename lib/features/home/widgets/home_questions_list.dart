part of '../pages/home_page.dart';

class _HomeQuestionsList extends StatelessWidget {
  final List<QuestionModel> questions;

  const _HomeQuestionsList({required this.questions});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: questions.length,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 10);
        },
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(AppRoutes.questionDetail, arguments: questions[index]);
            },
            child: Hero(
              tag: 'question_${questions[index].id}',
              child: Container(
                margin: index == 0 ? const EdgeInsets.only(left: 20) : EdgeInsets.zero,
                width: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(questions[index].imageUri),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 60,
                    width: 240,
                    decoration: BoxDecoration(
                      color: context.appColorScheme.black20,
                      border: Border(
                        top: BorderSide(color: context.appColorScheme.white10),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    child: Text(
                      questions[index].title,
                      style: context.appStyle.roboto15RegularWhite.copyWith(height: 1.33),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
