import 'package:flutter/material.dart';

import '../../../const/constants.dart';
import '../../../responsive/responsive.dart';
import 'header_web_menu.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        // it  display only on mobile and tab
        //not working

        if (!Responsive.isDesktop(context))
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),
        const Text(
          "HYPERPC",
          style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
              color: kSecondaryColor),
        ),
        const Spacer(),
        //menu
        if (Responsive.isDesktop(context)) const HeaderWebMenu(),
        const Spacer(),

        size.width > 400
            ? Expanded(
                /*Кнопка поиска если нужна ?*/

                child: Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.withOpacity(0.3)),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                        focusedBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        enabledBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
              )
            : Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.withOpacity(0.3)),
                ),
                child: const Icon(Icons.search)),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
            size: 22,
          ),
        )
      ],
    );
  }
}
