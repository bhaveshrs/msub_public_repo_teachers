import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teachers_app/config/router/error_route_screen.dart';
import 'package:teachers_app/config/router/route_names.dart';
import 'package:teachers_app/features/announcement/announcement.dart';
import 'package:teachers_app/features/announcement/detailed_view_announcement.dart';
import 'package:teachers_app/features/assignment/add_assignment.dart';
import 'package:teachers_app/features/calender/event_view_calender.dart';
import 'package:teachers_app/features/change_email/change_email.dart';
import 'package:teachers_app/features/change_mobile_number/change_mobile_number.dart';
import 'package:teachers_app/features/change_password_screen/change_password_screen.dart';
import 'package:teachers_app/features/classes/add_class.dart';
import 'package:teachers_app/features/classes/class_details.dart';
import 'package:teachers_app/features/dashboard/dashbord.dart';
import 'package:teachers_app/features/facilities/facilities.dart';
import 'package:teachers_app/features/forgot_pass/create_newpass.dart';
import 'package:teachers_app/features/forgot_pass/forgot_pass.dart';
import 'package:teachers_app/features/forgot_pass_screen/forgot_pass_screen.dart';
import 'package:teachers_app/features/help_and_support/help_support.dart';
import 'package:teachers_app/features/help_and_support/report_issue.dart';
import 'package:teachers_app/features/help_and_support/report_issue_secstep.dart';
import 'package:teachers_app/features/libarary/libarary.dart';
import 'package:teachers_app/features/libarary/libarary_details.dart';
import 'package:teachers_app/features/notification/notification_screen.dart';
import 'package:teachers_app/features/onboarding/onbaording.dart';
import 'package:teachers_app/features/otp_screen/otp_screen.dart';
import 'package:teachers_app/features/profile/profile.dart';
import 'package:teachers_app/features/scholarship/scholarship.dart';
import 'package:teachers_app/features/scholarship/scholarship_detail.dart';
import 'package:teachers_app/features/scholarship/scholarship_listing.dart';
import 'package:teachers_app/features/settings/settings.dart';
import 'package:teachers_app/features/signin/signin.dart';
import 'package:teachers_app/features/splash/splash.dart';
import 'package:teachers_app/features/welcome/welcome.dart';

class AppRouter {
  // AppRouter._privateConstructor();
  // static AppRouter? _instance;
  // factory AppRouter() => _instance ??= AppRouter._privateConstructor();

  final router = GoRouter(
    initialLocation: AppRouteNames.splashScreenRoute,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      return null;
    },
    routes: [
      GoRoute(
        path: AppRouteNames.splashScreenRoute,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const SplashScreen(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.onboardingRoute,
        name: AppRouteNames.onboardingRoute,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const OnboardingScreen(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.welcomeRoute,
        name: AppRouteNames.welcomeRoute,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const WelcomeHome(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.signinRoute,
        name: AppRouteNames.signinRoute,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const SignInView(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.forgotPassRoute,
        name: AppRouteNames.forgotPassRoute,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const ForgotPass(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.createNewPassRoute,
        name: AppRouteNames.createNewPassRoute,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: CreateNewPass(
            email: (state.extra as Map).containsKey('email')
                ? ((state.extra as Map)['email'] as String)
                : null,
          ),
        ),
      ),
      GoRoute(
        path: AppRouteNames.dashboardRoute,
        name: AppRouteNames.dashboardRoute,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const DashBoard(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.classDetailsRoute,
        name: AppRouteNames.classDetailsRoute,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const ClassDetails(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.addAssignmentRoute,
        name: AppRouteNames.addAssignmentRoute,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const AddAssignment(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.addClassRoute,
        name: AppRouteNames.addClassRoute,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const AddClass(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.notificationRoute,
        name: AppRouteNames.notificationRoute,
        pageBuilder: (context, state) {
          final extra = state.extra;
          final isFormNotification =
              (extra is Map && extra.containsKey('isFormNotification'))
                  ? (extra['isFormNotification'] as bool)
                  : false;

          return MaterialPage(
            key: state.pageKey,
            child: NotificationScreen(
              isFormNotification: isFormNotification,
            ),
          );
        },
      ),
      GoRoute(
          path: AppRouteNames.moreAnnouncementRoute,
          name: AppRouteNames.moreAnnouncementRoute,
          pageBuilder: (context, state) {
            final extra = state.extra;
            final isFormNotification =
                (extra is Map && extra.containsKey('isFormNotification'))
                    ? (extra['isFormNotification'] as bool)
                    : false;
            return MaterialPage(
              key: state.pageKey,
              child: AnnouncementScreen(isFormNotification: isFormNotification),
            );
          }),
      GoRoute(
        path: AppRouteNames.detailedViewAnnouncement,
        name: AppRouteNames.detailedViewAnnouncement,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const DetailedViewAnnouncement(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.helpSupport,
        name: AppRouteNames.helpSupport,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const HelpSupport(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.reportIssue,
        name: AppRouteNames.reportIssue,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const ReportIssue(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.reportIssueSecStep,
        name: AppRouteNames.reportIssueSecStep,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: ReportIssueSecStep(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.eventDetailedView,
        name: AppRouteNames.eventDetailedView,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const EventViewCalender(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.facultiesScreen,
        name: AppRouteNames.facultiesScreen,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const Facilities(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.scholarship,
        name: AppRouteNames.scholarship,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const Scholarship(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.scholarshipListing,
        name: AppRouteNames.scholarshipListing,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const ScholarshipListing(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.scholarshipDetail,
        name: AppRouteNames.scholarshipDetail,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const ScholarshipDetail(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.libary,
        name: AppRouteNames.libary,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const Libarary(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.libaryDetails,
        name: AppRouteNames.libaryDetails,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const LibararyDetails(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.profile,
        name: AppRouteNames.profile,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const Profile(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.settings,
        name: AppRouteNames.settings,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const Settings(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.changeMobileNumber,
        name: AppRouteNames.changeMobileNumber,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: ChangeMobileNumber(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.otpScreen,
        name: AppRouteNames.otpScreen,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: OtpScreen(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.changeEmail,
        name: AppRouteNames.changeEmail,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: ChangeEmail(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.forGotPassScreen,
        name: AppRouteNames.forGotPassScreen,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: ForgotPassScreen(),
        ),
      ),
      GoRoute(
        path: AppRouteNames.changePasswordScreen,
        name: AppRouteNames.changePasswordScreen,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const ChangePasswordScreen(),
        ),
      ),
      // GoRoute(
      //   name: AppRouteNames.homeScreen,
      //   path: AppRouteNames.homeScreen,
      //   pageBuilder: (context, state) => MaterialPage(
      //     key: state.pageKey,
      //     child: HomeScreen(
      //       openDrawer: (state.extra as Map?)?['openDrawer'] ?? false,
      //     ),
      //   ),
      // ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: ErrorScreen(
        e: state.error,
      ),
    ),
  );
}
