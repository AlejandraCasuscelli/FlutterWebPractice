const rootRoute = "/";

const tipsPageDisplayName = "Tips";
const tipsviewPageRoute = "/tips";

const preguntasHabitosPageDisplayName = "Preguntas Habitos";
const preguntasHabitosPageRoute = "/preguntashabitos";

const loginPageDisplayName = "Log out";
const loginPageRoute = "/login";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}



List<MenuItem> sideMenuItemRoutes = [
 MenuItem(tipsPageDisplayName, tipsviewPageRoute),
 MenuItem(preguntasHabitosPageDisplayName, preguntasHabitosPageRoute),
 MenuItem(loginPageDisplayName, loginPageRoute),
];