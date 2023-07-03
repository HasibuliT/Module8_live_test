import 'package:flutter/material.dart';


class Contact {
  final String name;
  final String email;
  final String phoneNumber;

  Contact({required this.name, required this.email, required this.phoneNumber});
}

class ContactList extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: 'John Doe', email: 'Johndoe@gmail.com', phoneNumber: '+8801735853445'),
    Contact(name: 'Jane Smith', email: 'Janesmith@gmail.com', phoneNumber: '+8801647067543'),
    Contact(name: 'Alice Johnson', email: 'Alice Johnson', phoneNumber: '+8801543786432'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contacts[index].name),
            subtitle: Text(contacts[index].email),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    padding: EdgeInsets.all(17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text('Contact Details',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('Name: ${contacts[index].name}',style: TextStyle(fontSize: 19),),
                        Text('Email: ${contacts[index].email}',style: TextStyle(fontSize: 19),),
                        Text('Phone: ${contacts[index].phoneNumber}',style: TextStyle(fontSize: 19,),),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}