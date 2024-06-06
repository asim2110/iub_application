import 'package:flutter/material.dart';
import 'package:iub_application/Views/DashBoard/Drawar/contact_us.dart';
import 'package:iub_application/Views/DashBoard/account_statment.dart';
import 'package:iub_application/Views/DashBoard/current_enrollmenty_screen.dart';
import 'package:iub_application/Views/DashBoard/fee_voucher_screen.dart';
import 'package:iub_application/Views/DashBoard/plan_of_study_screen.dart';
import 'package:iub_application/Views/DashBoard/timetable_screen.dart';
import 'package:iub_application/Views/DashBoard/transport_screen.dart';

class GridItemModel {
  final String title;
  final IconData icon;
  final Widget? destination;

  GridItemModel({required this.title, required this.icon, this.destination});
}

final List<GridItemModel> gridItems = [
  GridItemModel(
      title: 'Time Table',
      icon: Icons.schedule,
      destination: TimetableScreen()),
  GridItemModel(
      title: 'Transport',
      icon: Icons.directions_bus,
      destination: TransportScreen()),
  GridItemModel(
      title: 'Plan of Study',
      icon: Icons.diversity_3,
      destination: Plan_Of_Study()),
  GridItemModel(
      title: 'Current Enrollment',
      icon: Icons.person_search_rounded,
      destination: CurrentEnrollment()),
  GridItemModel(
      title: 'Fee Voucher',
      icon: Icons.school_rounded,
      destination: FeeVoucher()),
  GridItemModel(title: 'Email', icon: Icons.mail, destination: Contact_Us()),
  GridItemModel(
      title: 'Account Statement',
      icon: Icons.manage_accounts,
      destination: AccountStatment()),
];
