import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget{

  const SectionHeader({
    Key? key,
    required this.title,
    this.action = 'View'
  }):super(key: key);

  final String title;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: Theme.of(context).textTheme.headline6!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
        Text(action,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),)
      ],
    );
  }

}