import 'package:bridge/Routes/Router.dart';
import 'package:bridge/models/Users.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class AppDrawer extends StatelessWidget {
  final User user;

  const AppDrawer({Key key, this.user}) : super(key: key);
  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  Widget _createHeader(context) {
    return GFDrawerHeader(
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
              'https://images.unsplash.com/photo-1515387784663-e2e29a23f69e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80'),
        ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed(ProfileRoute, arguments: user);
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                minRadius: 45,
                maxRadius: 63,
                backgroundImage: NetworkImage(
                  user.photoUrl,
                ),
              ),
              Text(
                user.username,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GFDrawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(context),
          _createDrawerItem(
            icon: Icons.remove_from_queue,
            text: 'Requests',
          ),
          _createDrawerItem(
            icon: Icons.event,
            text: 'Pools',
          ),
          _createDrawerItem(
            icon: Icons.share,
            text: 'Share',
          ),
          Divider(),
          _createDrawerItem(icon: Icons.collections_bookmark, text: 'Steps'),
          _createDrawerItem(icon: Icons.face, text: 'anything'),
          _createDrawerItem(icon: Icons.account_box, text: 'etc...'),
          _createDrawerItem(icon: Icons.stars, text: 'Useful Links'),
          Divider(),
          _createDrawerItem(icon: Icons.bug_report, text: 'Report an issue'),
          ListTile(
            title: Text('Version 0.0.1'),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
