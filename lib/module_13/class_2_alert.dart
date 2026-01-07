import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlertDialog() {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(width: 2, color: Colors.red)),
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 50,
                ),
                title: Text('This is Title'),
                content: Text('Are you sure .. ?'),
                actions: [
                  TextButton(onPressed: () {}, child: Text('Yes')),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('No')),
                ],
              ));
    }

    void showSimpleDialog() {
      showDialog(
          context: context,
          builder: (context) => SimpleDialog(
                title: Text('Simple Dialog'),
                children: [
                  SimpleDialogOption(
                    onPressed: () {},
                    child: Text('English'),
                  ),
                  SimpleDialogOption(
                    child: Text('Bangla'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Enter your age..?'),
                        TextField(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(onPressed: () {}, child: Text('Cancle')),
                            ElevatedButton(
                                onPressed: () {}, child: Text('Save')),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ));
    }

    void showSnackbar() {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Item deleted'),
        action: SnackBarAction(label: 'Undo', onPressed: () {}),
      ));
    }

    void showBottomSheet() {
      showModalBottomSheet(
          context: context,
          builder: (context) => Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Choose Option'),
                    ListTile(
                      title: Text('Option-1'),
                    ),
                    ListTile(
                      title: Text('Option-1'),
                    ),
                    ListTile(
                      title: Text('Option-1'),
                    ),
                    ListTile(
                      title: Text('Option-1'),
                    ),
                  ],
                ),
              ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showAlertDialog();
                },
                child: Text('Alert Dialog')),
            ElevatedButton(
                onPressed: () {
                  showSimpleDialog();
                },
                child: Text('Simple Dialog')),
            ElevatedButton(
                onPressed: () {
                  showSnackbar();
                },
                child: Text('Simple Snackbar')),
            ElevatedButton(
                onPressed: () {
                  showBottomSheet();
                },
                child: Text('Bottom sheet')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
