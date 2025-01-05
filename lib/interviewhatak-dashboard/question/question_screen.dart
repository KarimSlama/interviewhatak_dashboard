import 'package:flutter/material.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Makes dialog size fit content
        children: [
          const Text(
            'Adding a new transaction',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 8),
          const Text('Please fill in the form below'),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: buildDropdownField(label: 'Type', value: 'Income'),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: buildDropdownField(label: 'Currency', value: 'USD'),
              ),
            ],
          ),
          const SizedBox(height: 8),
          buildTextField(label: 'Amount', hint: '\$10,500.00'),
          const SizedBox(height: 8),
          buildTextField(
              label: 'Name', hint: 'Name of transaction or short description'),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: buildDropdownField(label: 'Method', value: 'Mastercard'),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: buildDropdownField(label: 'Category', value: 'Select'),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: buildTextField(label: 'Date', hint: '01 Jul 2024'),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: buildDropdownField(label: 'Status', value: 'Select'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple),
                onPressed: () {},
                child: const Text('Save'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTextField({required String label, required String hint}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  Widget buildDropdownField({required String label, required String value}) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
      value: value,
      items: const [
        DropdownMenuItem(value: 'Income', child: Text('Income')),
        DropdownMenuItem(value: 'Expense', child: Text('Expense')),
        DropdownMenuItem(value: 'USD', child: Text('USD')),
        DropdownMenuItem(value: 'Mastercard', child: Text('Mastercard')),
        DropdownMenuItem(value: 'Select', child: Text('Select')),
      ],
      onChanged: (newValue) {},
    );
  }
}
