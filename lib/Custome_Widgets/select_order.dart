import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/Custome_Widgets/text_colum.dart';

class SelectOrder extends StatefulWidget {
  const SelectOrder({super.key});

  @override
  _SelectOrderState createState() => _SelectOrderState();
}

class _SelectOrderState extends State<SelectOrder> {
  String _selectedOption = 'Select...';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final selected = await _showBottomSheet(context);
        if (selected != null) {
          setState(() {
            _selectedOption = selected;
          });
        }
      },
      child: Container(
        height: 52,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFEDEDED)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded( // Wrap Text in Expanded to prevent overflow
              child: Text(
                _selectedOption,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Future<String?> _showBottomSheet(BuildContext context) {
    String selectedValue = _selectedOption;

    return showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset(
                          'assets/svg/exit.svg',
                          width: 40,
                          height: 40,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Select Branch',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextColum(
                          textOne: 'Richdiets Branch one',
                          textTwo: 'Dubai, Street 55 Dub Tower',
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Nearest branch to you',
                          style: TextStyle(
                            color: Color(0xff187D44),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    leading: Radio<String>(
                      activeColor: const Color(0xff187D44),
                      value: 'Richdiets Branch one, Dubai, Street 55 Dub Tower',
                      groupValue: selectedValue,
                      onChanged: (value) {
                        Navigator.pop(context, value);
                      },
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: const TextColum(
                      textOne: 'Richdiets Branch two',
                      textTwo: 'Dubai, Street 55 Dub Tower',
                    ),
                    leading: Radio<String>(
                      activeColor: const Color(0xff187D44),
                      value: 'Richdiets Branch two, Dubai, Street 55 Dub Tower',
                      groupValue: selectedValue,
                      onChanged: (value) {
                        Navigator.pop(context, value);
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
