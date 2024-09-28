import 'package:flutter/material.dart';
import 'package:tutorial/tutorial_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(TutorialApp());
}

/*class _MyHomePageState extends State<MyHomePage> {
  List<Company> _companies = Company.getCompanies();
  List<PopupMenuItem<Company>> _popupMenuItems;
  Company _selectedCompany;

  @override
  void initState() {
    _popupMenuItems = buildPopUPMenuItems(_companies);
    _selectedCompany = _popupMenuItems[0].value;
    super.initState();
  }

  onSelectItem(Company selectedCompany) {
    setState(() {
      _selectedCompany = selectedCompany;
    });
  }

  List<PopupMenuItem<Company>> buildPopUPMenuItems(List companies) {
    List<PopupMenuItem<Company>> item = List();
    for (Company company in companies) {
      item.add(
        PopupMenuItem(
          value: company,
          child: Text(
            company.name,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      );
    }
    return item;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Menu Flutter'),
        backgroundColor: Colors.deepPurpleAccent,
        actions: <Widget>[
          PopupMenuButton(
            offset: Offset(0, 60),
            elevation: 5.0,
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 'edit',
                  child: Text('Edit'),
                ),
                PopupMenuItem(
                  value: 'update',
                  child: Text('Update'),
                ),
                PopupMenuItem(
                  value: 'delete',
                  child: Text('Delete'),
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'PopUp Menu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    PopupMenuButton(
                      offset: Offset(0, 40),
                      elevation: 5.0,
                      onSelected: onSelectItem,
                      itemBuilder: (BuildContext context) {
                        return buildPopUPMenuItems(_companies);
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Selected Menu:',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      '${_selectedCompany.name}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.green),
                    ),
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: InkWell(
              onTap: () {
                Route route = MaterialPageRoute(builder: (context) => DropDownPage());
                Navigator.push(context, route);
              },
              child: Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(143, 148, 251, 1),
                    Color.fromRGBO(143, 148, 251, .6),
                  ]),
                ),
                child: Center(
                  child: Text(
                    "go to dorop down list page",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}*/
