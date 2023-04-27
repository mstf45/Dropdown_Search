import 'package:dropdown_search/dropdown_search.dart';
import 'package:dropdownsearch/job_list.dart';
import 'package:flutter/material.dart';

class DropDownSearchKullanimi extends StatefulWidget {
  const DropDownSearchKullanimi({Key? key}) : super(key: key);

  @override
  State<DropDownSearchKullanimi> createState() =>
      _DropDownSearchKullanimiState();
}

class _DropDownSearchKullanimiState extends State<DropDownSearchKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropDown Search Kullanımı'),
        centerTitle: true,
      ),
      body: Center(
        child: DropdownSearch<String>(
          dropdownBuilder: (context, selectedItem) {
            return Text(
              selectedItem.toString(),
            );
          },
          items: trMeslekler,
          popupProps: PopupProps.bottomSheet(
            constraints: const BoxConstraints(maxHeight: 330),
            searchFieldProps: const TextFieldProps(
              cursorHeight: 20,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
            ),
            showSelectedItems: true,
            isFilterOnline: true,
            showSearchBox: true,
            itemBuilder: (context, item, isSelected) {
              return Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  item,
                  style: const TextStyle(fontSize: 20),
                ),
              );
            },
          ),
          dropdownDecoratorProps: const DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              label: Text(
                'Meslek',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
