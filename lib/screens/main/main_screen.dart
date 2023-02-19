import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking_flutter/core/extensions/navigator_extension.dart';
import 'package:mobile_banking_flutter/screens/widgets/main_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      drawer: Drawer(
        width: 300,
        child: Container(
          color: backgroundColor,
          child: Column(children: const [
            Text("1 data ****"),
            Text("2 data ****"),
            Text("3 data ****"),
            Text("4 data ****"),
            Text("5 data ****"),
            Text("5 data ****"),
            Text("5 data ****"),
            Text("5 data ****"),
            Text("5 data ****"),
          ]),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            /*
            Container(
              color: clickDarkBlue,
              padding: EdgeInsets.all(screenPadding),
              child: Row(
                children: [
                  GestureDetector(onTap: () {}, child: const Icon(Icons.menu, color: Colors.white),),
                  const Spacer(),
                  GestureDetector(onTap: () {}, child: const Icon(Icons.search, color: Colors.white),),
                ],
              ),
            ),*/
            Expanded(
              flex: 9,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    backgroundColor: backgroundColor,
                    leading: IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    ),
                    surfaceTintColor: backgroundColor,
                    actions: [
                      GestureDetector(
                        onTap: () {
                          push(Routes.language);
                        },
                        child: const Icon(Icons.settings, color: Colors.white),
                      ),
                      SizedBox(width: screenPadding),

                      GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.search, color: Colors.white),
                      ),
                      SizedBox(width: screenPadding),
                    ],
                    expandedHeight: 350,
                    collapsedHeight: 60,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              clickLightBlue,
                              clickDarkBlue,
                              backgroundColor,
                            ],
                            begin: Alignment(-1, -1),
                            end: Alignment(-1, 1),
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(top: 60),
                          height: 180.0,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                width: MediaQuery.of(context).size.width - 2 * screenPadding,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: screenPadding,
                                      vertical: screenPadding,
                                    ),
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(left: screenPadding, top: 70, bottom: 70),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: index == 0 ? Colors.transparent : disableButtonColor,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        index == 0 ?const Spacer()
                                        :Row(
                                          children: [
                                            Image.asset("assets/images/main1.png", color: clickDarkBlue,height: 18,),
                                            const SizedBox(width: 3),
                                            const Text(
                                              "Click Bank",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: clickDarkBlue,
                                                fontWeight: FontWeight.w800
                                              ),
                                            ),
                                            const Spacer(),
                                            const Text(
                                              "**** 8988",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w800
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 12),
                                        Text(index == 0 ?"balance".tr()
                                            :"Card name", style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14,),),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            const Text("200 000", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 24,),),
                                            const SizedBox(width: 6),
                                            Text("sum".tr(), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18,),),
                                            const Spacer(),
                                            IconButton(onPressed: (){}, icon: const Icon(Icons.remove_red_eye_outlined, color: Colors.white,)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),

                  /*
                  SliverToBoxAdapter(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            clickDarkBlue,
                            backgroundColor,
                          ],
                          begin: Alignment(-1, -1),
                          end: Alignment(-1, 1),
                        )
                      ),
                      child: SizedBox(
                        height: 280.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 23,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 200,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(left: 12, top: 12, bottom: 12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.transparent,
                                      boxShadow: const [
                                        BoxShadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 3)
                                      ]),
                                  child: Text(
                                    "$index",
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  */
                  // bu oy uchun keshbek
                  MyContainer(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "month_cash".tr(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "appears_cash".tr(),
                              style: const TextStyle(
                                color: clickDarkBlue,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          "0 ${"sum".tr()}",
                          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  // Click pass QR ..
                  SliverToBoxAdapter(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: screenPadding),
                      height: 120,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int i) => PaymentItem(
                          title: i == 0
                              ? "click_pass"
                              : i == 1
                                  ? "click_boom"
                                  : "qr_scan",
                          imgName: "assets/images/${i == 0 ? "click_pass" : i == 1 ? "click_boom" : "qr_scan"}.png",
                        ),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10),
                      ),
                    ),
                  ),
                  // notification text
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Container(
                        margin: EdgeInsets.all(screenPadding),
                        child: const Text(
                          "Notifications",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
                  ),
                  // notification Widgets
                  MyContainer(
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset("assets/images/gold.png"),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          flex: 6,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "Click Premium subscription",
                                    maxLines: 2,
                                    style: TextStyle(color: Colors.white, fontSize: 16),
                                  ),
                                  const Spacer(),
                                  Image.asset("assets/images/close.png", width: 22),
                                  const SizedBox(width: 4),
                                ],
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "Activate the subscription to obtain the doubled Cash back, return the commission for transfers and other advantages",
                                maxLines: 4,
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              ),
                              Row(
                                children: const [
                                  Spacer(),
                                  Text(
                                    "Follow",
                                    maxLines: 4,
                                    style: TextStyle(color: clickDarkBlue, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // for test
                  MyContainer(
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset("assets/images/gold.png"),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          flex: 6,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "Click Premium subscription",
                                    maxLines: 2,
                                    style: TextStyle(color: Colors.white, fontSize: 16),
                                  ),
                                  const Spacer(),
                                  Image.asset("assets/images/close.png", width: 22),
                                  const SizedBox(width: 4),
                                ],
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "Activate the subscription to obtain the doubled Cash back, return the commission for transfers and other advantages",
                                maxLines: 4,
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              ),
                              Row(
                                children: const [
                                  Spacer(),
                                  Text(
                                    "Follow",
                                    maxLines: 4,
                                    style: TextStyle(color: clickDarkBlue, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  MyContainer(
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset("assets/images/gold.png"),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          flex: 6,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "Click Premium subscription",
                                    maxLines: 2,
                                    style: TextStyle(color: Colors.white, fontSize: 16),
                                  ),
                                  const Spacer(),
                                  Image.asset("assets/images/close.png", width: 22),
                                  const SizedBox(width: 4),
                                ],
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "Activate the subscription to obtain the doubled Cash back, return the commission for transfers and other advantages",
                                maxLines: 4,
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              ),
                              Row(
                                children: const [
                                  Spacer(),
                                  Text(
                                    "Follow",
                                    maxLines: 4,
                                    style: TextStyle(color: clickDarkBlue, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  MyContainer(
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset("assets/images/gold.png"),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          flex: 6,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "Click Premium subscription",
                                    maxLines: 2,
                                    style: TextStyle(color: Colors.white, fontSize: 16),
                                  ),
                                  const Spacer(),
                                  Image.asset("assets/images/close.png", width: 22),
                                  const SizedBox(width: 4),
                                ],
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "Activate the subscription to obtain the doubled Cash back, return the commission for transfers and other advantages",
                                maxLines: 4,
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              ),
                              Row(
                                children: const [
                                  Spacer(),
                                  Text(
                                    "Follow",
                                    maxLines: 4,
                                    style: TextStyle(color: clickDarkBlue, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedFontSize: 13,
        unselectedFontSize: 12,
        selectedItemColor: clickDarkBlue,
        unselectedItemColor: itemBottomNavColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        useLegacyColorScheme: false,
        items: [
          for (int i = 1; i < 6; i++)
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/main$i.png"),
              ),
              label: bottomNavList[i - 1].tr(),
              backgroundColor: backgroundColor,
            ),
        ],
      ),
    );
  }
}

double screenPadding = 14;

var bottomNavList = [
  "home",
  "payment",
  "transfer",
  "statistics",
  "more",
];

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key, this.child, this.onPressed}) : super(key: key);
  final Widget? child;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
          margin: EdgeInsets.all(screenPadding),
          decoration: BoxDecoration(
            color: disableButtonColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: child),
    );
  }
}

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    required this.title,
    required this.imgName,
    this.onPressed,
    Key? key,
  }) : super(key: key);
  final String title;
  final Function()? onPressed;
  final String imgName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
      decoration: BoxDecoration(
        color: disableButtonColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Image.asset(
              imgName,
            ),
          ),
          const Spacer(),
          Text(
            tr(title),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
