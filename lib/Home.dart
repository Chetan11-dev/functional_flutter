import 'package:flutter/material.dart';
import 'package:functional_flutter/Store.dart';

final textdecor = InputDecoration(
    fillColor: Colors.white,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0), borderSide: BorderSide()));

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: textdecor.copyWith(labelText: 'Name'),
            onSaved: (value) => {saveToStore('name', value)},
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: textdecor.copyWith(labelText: 'Favorite Game'),
            onSaved: (value) => {saveToStore('game', value)},
          ),
          MaterialButton(
              child: Text('Save'),
              onPressed: () {
                formKey.currentState.save();
                final snackbar =
                    SnackBar(content: Text(getFromStore('game')));
                Scaffold.of(context).showSnackBar(snackbar);
              })
        ],
      ),
    );
  }
}
