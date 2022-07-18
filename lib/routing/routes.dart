const RootRoute = '/hello';

const OverviewPageDisplayName = "MvP's";
const OverviewPageRoute = '/mvps';

const FavoritePageDisplayName = "Favoritos";
const FavoritePageRoute = '/fav';

const TimerPageDisplayName = "Timer";
const TimerPageRoute = '/timer';

const HelpPageDisplayName = "Ajuda";
const HelpPageRoute = '/help';

class PageItem {
  final String name;
  final String route;

  PageItem(this.name, this.route);
}

List<PageItem> pageItems = [
  PageItem(OverviewPageDisplayName, OverviewPageRoute),
  PageItem(TimerPageDisplayName, TimerPageRoute),
  PageItem(FavoritePageDisplayName, FavoritePageRoute),
  PageItem(HelpPageDisplayName, HelpPageRoute)
];
