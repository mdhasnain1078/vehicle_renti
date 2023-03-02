import 'package:flutter/material.dart';

class DurationTile extends StatelessWidget {
  const DurationTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        "DATE & TIME",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("12:30 PM",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 15)),
                const SizedBox(
                  height: 5,
                ),
                Text("Tue, 2 Feb",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black))
              ],
            ),
            const Icon(
              Icons.arrow_right_alt_outlined,
              size: 50,
            ),
            Column(
              children: [
                Text("6:30 PM",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 15)),
                const SizedBox(
                  height: 5,
                ),
                Text("Tue, 2 Feb",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black))
              ],
            )
          ],
        ),
      ),
    );
  }
}
