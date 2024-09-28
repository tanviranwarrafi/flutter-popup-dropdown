import 'package:flutter/material.dart';
import 'package:tutorial/themes/colors.dart';
import 'package:tutorial/themes/text_styles.dart';

const _POPUP_MENU_LIST = ['Create', 'Edit', 'Update', 'Delete'];
const _DROPDOWN_MENU_LIST = ['Bangladesh', 'Nepal', 'India', 'United States of America', 'Canada'];

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _popupMenu = 'Create';
  var _dropdownMenu = 'Bangladesh';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(backgroundColor: white, title: const Text('Popup Menu | Dropdown')),
      body: Container(
        width: size.width,
        height: size.height,
        child: ListView(
          shrinkWrap: true,
          clipBehavior: Clip.antiAlias,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: 40),
            Text('Popup Example', style: TextStyles.text16_600.copyWith(color: dark)),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerLeft,
              child: PopupMenuButton(
                offset: const Offset(0, 40),
                elevation: 5,
                child: _selectedPopupMenu,
                onSelected: (value) => setState(() => _popupMenu = value),
                itemBuilder: (context) => List.generate(_POPUP_MENU_LIST.length, (index) => _popupItem(_POPUP_MENU_LIST[index])).toList(),
              ),
            ),
            const SizedBox(height: 24),
            Text('Dropdown Example', style: TextStyles.text16_600.copyWith(color: dark)),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 06),
              decoration: BoxDecoration(border: Border.all(color: offWhite3), borderRadius: BorderRadius.circular(04)),
              child: DropdownButton(
                underline: const SizedBox.shrink(),
                isDense: true,
                iconSize: 18,
                isExpanded: true,
                icon: const Icon(Icons.arrow_drop_down_circle_outlined, color: dark),
                value: _dropdownMenu,
                items: List.generate(_DROPDOWN_MENU_LIST.length, (index) => _dropdownItem(_DROPDOWN_MENU_LIST[index])).toList(),
                onChanged: (v) => setState(() => _dropdownMenu = v!),
                hint: const Text('Please select your country'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PopupMenuItem<String> _popupItem(String item) => PopupMenuItem(value: item, child: Text(item));

  Widget get _selectedPopupMenu {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 04),
      decoration: BoxDecoration(border: Border.all(color: offWhite3), borderRadius: BorderRadius.circular(04)),
      child: Text(_popupMenu, style: TextStyles.text15_400.copyWith(color: dark)),
    );
  }

  DropdownMenuItem<String> _dropdownItem(String item) => DropdownMenuItem(value: item, child: Text(item));
}
