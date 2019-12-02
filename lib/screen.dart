import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Stack(
				children: <Widget>[
					Align(
						alignment: Alignment.topCenter,
						child: _image(),
					),
					Align(
						alignment: Alignment.bottomCenter,
						child: _content(),
					),
					Align(
						alignment: Alignment.bottomCenter,
						child: _action(),
					),
					Align(
						alignment: Alignment.topLeft,
						child: _backBtn(),
					),
				],
			),
		);
	}

	Widget _image() {
		return Container(
			color: Colors.grey,
			height: 400,
		);
	}

	Widget _content() {
		return Container(
			height: 480,
			decoration: BoxDecoration(
				color: Colors.white,
				borderRadius: BorderRadius.only(
					topLeft: Radius.circular(30),
					topRight: Radius.circular(30),
				),
			),
		);
	}

	Widget _action() {
		return Container(
			width: 200,
			height: 45,
			margin: EdgeInsets.only(bottom: 40),
			child: RaisedButton(
				color: Colors.deepPurple,
				onPressed: () {},
				child: Text(
					'Add',
					style: TextStyle(
						color: Colors.white
					),
				),
			),
		);
	}

	Widget _backBtn() {
		return Container(
			height: 60,
			width: 60,
			margin: EdgeInsets.only(
				left: 40,
				top: 80,
			),
			child: RaisedButton(
				color: Colors.deepPurple,
				onPressed: () {},
				child: Icon(
					Icons.arrow_back,
					color: Colors.white,
				),
			),
		);
	}
}
