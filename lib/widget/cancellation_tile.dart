import 'package:flutter/material.dart';

class CencellationTile extends StatelessWidget {
  const CencellationTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("CANCELLATION",
          style: Theme.of(context).textTheme.bodyText1),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('''Cancellation after ride is accepted
will incur a fine.''',
                style: Theme.of(context).textTheme.bodyText2),
            Icon(
              Icons.error_outline,
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
