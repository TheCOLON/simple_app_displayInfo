import 'employee_class.dart';
import 'package:flutter/material.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  var formKey = GlobalKey<FormState>();

  TextEditingController employeeNumberController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController birthdateController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  String? selectedGender;
  List genders = ['Female', 'Male'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Employee's Information"),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: employeeNumberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ex. 2015100629",
                  labelText: "Employe's Number"),
              maxLength: 10,
              validator: (value) {
                return (value == '') ? "Please enter Employee's Number" : null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: nameController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ex. Totoy Bibo",
                  labelText: "Name"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Can't be Empty";
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: birthdateController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ex. October 26, 1997",
                  labelText: "Birthdate"),
              validator: (value) {
                return (value == '') ? 'Please enter your birthday' : null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: addressController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ex. Cagayan de Oro",
                  labelText: "Address"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Required';
                }
              },
            ),
            const SizedBox(height: 10),
            ButtonTheme(
              alignedDropdown: true,
              child: DropdownButtonFormField(
                  items: [
                    ...genders.map((gender) => DropdownMenuItem(
                          value: gender,
                          child: Text(gender),
                        ))
                  ],
                  value: selectedGender,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Select desired gender",
                    labelText: "Gender",
                  ),
                  validator: (value) {
                    return value == null ? 'Please Select Gender' : null;
                  },
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value as String;
                    });
                  }),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                    var isFormValid = formKey.currentState!.validate();
                    if (isFormValid) {
                      Employee newsEmployeelist = Employee(
                          employeeNumber: employeeNumberController.text,
                          name: nameController.text,
                          birthday: birthdateController.text,
                          gender: selectedGender,
                          address: addressController.text);

                      Navigator.pop(context, newsEmployeelist);

                      // Save to database
                    }
                  },
                  child: const Text('Submit')),
            )
          ],
        ),
      ),
    );
  }
}
