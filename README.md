# Flutter's Hidden Drawer Package
### Hidden Drawer Menu is a library for adding a beautiful drawer mode menu feature with perspective animation.

## Add Dependency
```bash
flutter pub add hidden_drawer_menu
```

## Sample
<p>
<img align="center" alt="gif" src="https://github.com/Vishwa-Karthik/Flutter-HiddenDrawer/blob/master/img.png" width=200 height=400 />
</p>

## Add Pages
```dart
 void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Home ",
            colorLineSelected: Colors.deepPurple,
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Settings ",
            baseStyle: myTextStyle,
            colorLineSelected: Colors.deepPurple,
            selectedStyle: myTextStyle),
        const Settings(),
      ),
    ];
  }
  ```
  ## Options
  ```dart
  @override
  Widget build(BuildContext context) {

    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurple.shade200,
      backgroundColorAppBar: Colors.deepPurple.shade200,
      screens: items,
        //    typeOpen: TypeOpen.FROM_RIGHT,
        //    disableAppBarDefault: false,
        //    enableScaleAnimin: true,
        //    enableCornerAnimin: true,
        //    slidePercent: 80.0,
        //    verticalScalePercent: 80.0,
        //    contentCornerRadius: 10.0,
        //    iconMenuAppBar: Icon(Icons.menu),
        //    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
        //    whithAutoTittleName: true,
        //    styleAutoTittleName: TextStyle(color: Colors.red),
        //    actionsAppBar: <Widget>[],
        //    backgroundColorContent: Colors.blue,
        //    elevationAppBar: 4.0,
        //    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
        //    enableShadowItensMenu: true,
        //    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
    );
```

## Reference 
Pub.dev : [hidden_drawer_menu](https://pub.dev/packages/hidden_drawer_menu)
