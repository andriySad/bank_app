import 'package:bank_app/common/values/app_colors.dart';
import 'package:bank_app/common/values/app_layout.dart';
import 'package:bank_app/common/values/app_styles.dart';
import 'package:bank_app/logic/app_navigation/app_navigation_cubits.dart';
import 'package:bank_app/presentation/pages/home_page/widgets/card_view.dart';
import 'package:bank_app/presentation/pages/home_page/widgets/transactions_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/bank_logo.svg',
                            colorFilter: ColorFilter.mode(
                              AppColors.red,
                              BlendMode.srcIn,
                            ),
                            height: AppLayout.getHeight(40),
                            width: AppLayout.getHeight(40),
                          ),
                          Gap(AppLayout.getWidth(5)),
                          Text(
                            'Cosmo Bank',
                            style: AppStyles.logoStyle.copyWith(
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          BlocProvider.of<AppNavigationCubits>(context).goWelcome();
                        },
                        icon: Icon(
                          Icons.notifications_active_outlined,
                          size: AppLayout.getWidth(30),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(30)),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                Text(
                  '\$10,620',
                  style: AppStyles.titleStyle.copyWith(
                    color: AppColors.black,
                  ),
                ),
                Gap(AppLayout.getHeight(30)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: AppLayout.getWidth(20),
                        ),
                        child: const CardView(),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: AppLayout.getWidth(20),
                        ),
                        child: const CardView(),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: AppLayout.getWidth(20),
                        ),
                        child: const CardView(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  height: AppLayout.getHeight(320),
                  child: TransactionsView(),
                )),
          ],
        ),
      ),
    );
  }
}
