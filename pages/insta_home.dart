import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;

class InstaHome extends StatefulWidget{
	@override

	_InstaHomeState createState () => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome>{

	@override
	Widget build(BuildContext context){
		final topAppBar = AppBar(
		backgroundColor : Colors.grey[700],
		elevation : 1.0,
		title : Text(
			'Instagram',
			style : TextStyle(
					color : Colors.white,
					fontWeight : FontWeight.bold,

				)
		),
		actions : <Widget>[
			Transform.rotate(
				angle: - math.pi / 4,
				child : IconButton(
					icon : Icon(Icons.send,color : Colors.white),
					onPressed : (){},
				),
			),
		],
		leading : IconButton(
			icon : Icon(FontAwesomeIcons.camera,color : Colors.white),
			onPressed : (){},
		),
	);
		return Scaffold(
			backgroundColor : Colors.black,
			appBar : topAppBar,
			body : Column(
				children : <Widget>[
					Container(
						height : MediaQuery.of(context).size.height * 0.1,
						width : double.infinity,
						child : ListView.builder(
							scrollDirection : Axis.horizontal,  
							itemCount : 550,
							itemBuilder : (c,i){
								return Padding(
									padding : const EdgeInsets.all(8.0),
									child : Container(
										width : 40.0,
										height : 20.0,
										margin : const EdgeInsets.symmetric(vertical : 8.0),
										decoration : BoxDecoration(
											color : Colors.white,
											shape : BoxShape.circle,
											image : DecorationImage(
												fit : BoxFit.fill,
												image : NetworkImage(
													"https://thumbs.dreamstime.com/b/fashion-college-man-his-twenties-happy-checking-blog-chatting-internet-friends-smart-mobile-phone-app-european-156836954.jpg"
												)
											),
										),
									),
								);
							}
						),
					),
					Divider(color : Colors.white,height : 2.0),
					Expanded(
						child : ListView.builder(
						itemCount : 5,
						itemBuilder : (c,i){
							return Column(
								crossAxisAlignment : CrossAxisAlignment.start,
								children : <Widget>[
									Padding(
										padding : const EdgeInsets.only(top : 8.0),
										child : Row(
											children : <Widget>[
												Container(
								                    width: 40.0,
								                    height: 40.0,
								                    decoration: new BoxDecoration(
								                        shape: BoxShape.circle,
								                        image: new DecorationImage(
								                            fit: BoxFit.fill,
								                            image: new NetworkImage(
								                                "https://thumbs.dreamstime.com/b/fashion-college-man-his-twenties-happy-checking-blog-chatting-internet-friends-smart-mobile-phone-app-european-156836954.jpg")
								                        )
								                    )),
												Expanded(
													child : Padding(
														padding : const EdgeInsets.only(left : 5.0),
														child : Text(
															'Yash_Pathari',
															style : TextStyle(
																color : Colors.white,
															),
														),
													),
												),

												Padding(
													padding : const EdgeInsets.only(right : 0.0),
													child : IconButton(
														icon : Icon(Icons.more_vert,color : Colors.white),
														onPressed : (){},
													),
												),
												
											]
										),
										
									),
									Image.network(
										"https://thumbs.dreamstime.com/b/fashion-college-man-his-twenties-happy-checking-blog-chatting-internet-friends-smart-mobile-phone-app-european-156836954.jpg"
									),
									Row(
										children : <Widget>[
											IconButton(
												icon : Icon(FontAwesomeIcons.heart,color : Colors.red),
												onPressed : (){},
											),
											IconButton(
												icon : Icon(FontAwesomeIcons.comment,color : Colors.white),
												onPressed : (){},
											),
											Row(
												crossAxisAlignment : CrossAxisAlignment.end,
												children : <Widget>[
													IconButton(
														icon : Icon(Icons.send,color : Colors.white),
														onPressed : (){},
													),
													IconButton(
														icon : Icon(FontAwesomeIcons.bookmark,color : Colors.white),
														onPressed : (){},
													),
												]
											),
											
										]
									),
									SizedBox(height : 10.0),
									RichText(
										text : TextSpan(
											text : 'Liked By\t\t',
											children : <TextSpan>[
												TextSpan(
													text : 'KaranJ_1530 ',
													style : TextStyle(
														fontWeight : FontWeight.bold,
													),
												),
												TextSpan(
													text : 'and ',
												),
												TextSpan(
													text : '117 Other',
													style : TextStyle(
														fontWeight : FontWeight.bold,
													),
												),
											]
										),
									),
									SizedBox(height : 10.0),
									RichText(
										text : TextSpan(
											text : 'Yash_Pathari',
											style : TextStyle(
												fontWeight : FontWeight.bold,
											),
											children : <TextSpan>[
												TextSpan(
													text : '\t\t Live Less out of habit and more out of Intent !!.',
												),
											]
										),
									),
									SizedBox(height : 10.0),
									Text(
										'View all 2 comments..',
										style : TextStyle(
											color : Colors.grey,
										),
									),
									SizedBox(height : 10.0),
									Row(

										children : <Widget>[
											Container(
								                    width: 30.0,
								                    height: 30.0,
								                    decoration: new BoxDecoration(
								                        shape: BoxShape.circle,
								                        image: new DecorationImage(
								                            fit: BoxFit.fill,
								                            image: new NetworkImage(
								                                "https://thumbs.dreamstime.com/b/fashion-college-man-his-twenties-happy-checking-blog-chatting-internet-friends-smart-mobile-phone-app-european-156836954.jpg")
								                        )
								                    )),
											SizedBox(width : 20.0),
											Expanded(
												child : TextFormField(
													style : TextStyle(
														color : Colors.white,
													),

													decoration : InputDecoration(
														hintStyle : TextStyle(
															color : Colors.white,
														),
														hintText : 'Add a comment ...',
														enabledBorder: UnderlineInputBorder(      
														borderSide: BorderSide(color: Colors.white), ),
														fillColor : Colors.white,
														focusColor : Colors.white,
														hoverColor : Colors.white,
													),
												),
											),
										]
									),
									SizedBox(height : 10.0),
									Text(
										'8 Hours ago',
										style : TextStyle(
											color : Colors.grey,
											fontSize : 10.0,
										),
									),
								]
							);
						}
					),
					),
					
				]
			),
			bottomNavigationBar: new Container(
	          color: Colors.white,
	          height: 50.0,
	          alignment: Alignment.center,
	          child: new BottomAppBar(
	            child: new Row(
	              // alignment: MainAxisAlignment.spaceAround,
	              mainAxisAlignment: MainAxisAlignment.spaceAround,
	              children: <Widget>[
	                new IconButton(
	                  icon: Icon(
	                    Icons.home,
	                  ),
	                  onPressed: () {},
	                ),
	                new IconButton(
	                  icon: Icon(
	                    Icons.search,
	                  ),
	                  onPressed: null,
	                ),
	                new IconButton(
	                  icon: Icon(
	                    Icons.add_box,
	                  ),
	                  onPressed: null,
	                ),
	                new IconButton(
	                  icon: Icon(
	                    Icons.favorite,
	                  ),
	                  onPressed: null,
	                ),
	                new IconButton(
	                  icon: Icon(
	                    Icons.account_box,
	                  ),
	                  onPressed: null,
	                ),
	              ],
	            ),
	          ),
	        )
		);
	}
}
