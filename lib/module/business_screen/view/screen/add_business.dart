import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kpvs/Config/BaseColors.dart';

class AddBusinessScreen extends StatelessWidget {
  const AddBusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add Your Business',style: TextStyle(fontWeight: FontWeight.w800),),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextField(label: 'Business Name'),
              _buildTextField(label: 'Address'),
              _buildTextField(label: 'Email'),
              _buildTextField(label: 'Contact'),
              _buildTextField(label: 'Website'),
              _buildDropdownField(label: 'Category', options: ['Category 1', 'Category 2', 'Category 3']), // You can replace the options with your actual category list
              _buildDropdownField(label: 'Subcategory', options: ['Subcategory 1', 'Subcategory 2', 'Subcategory 3']), // You can replace the options with your actual subcategory list
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: AppColor.kPrimaryColor),
                  onPressed: () {},
                  child: const Text('Add Business',style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String label}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildDropdownField({required String label, required List<String> options}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          DropdownButtonFormField<String>(
            items: options.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? value) {
              // Handle dropdown value change
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}

