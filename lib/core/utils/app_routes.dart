import 'package:bookly/feature/search/search_view_body.dart';
import 'package:bookly/home/peresention/views/home_view.dart';
import 'package:go_router/go_router.dart';
import '../../book_details/book_details_body.dart';
import '../../feature/splash/persentation/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homePage',
        builder: (context, state) => const homePage(),
      ),
      GoRoute(
        path: '/bookPage',
        builder: (context, state) => const BookDetailsBody(),
      ),
      GoRoute(
          path: '/searchPage',
          builder: (context, state) => const SearchViewBody()),
    ],
  );
}
