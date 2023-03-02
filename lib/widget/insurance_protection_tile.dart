import 'package:flutter/material.dart';

class InsuranceProtectionTile extends StatelessWidget {
  const InsuranceProtectionTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("INSURANCE & PROTECTION",
          style: Theme.of(context).textTheme.bodyText1),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Covered by LifeBuddy corp",
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