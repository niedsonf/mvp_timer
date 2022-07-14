const RootRoute = '/hello';

const OverviewPageDisplayName = "MvP's";
const OverviewPageRoute = '/mvps';

const FavoritePageDisplayName = "Favoritos";
const FavoritePageRoute = '/fav';

const TimerPageDisplayName = "Timer";
const TimerPageRoute = '/timer';

class PageItem {
  final String name;
  final String route;

  PageItem(this.name, this.route);
}

List<PageItem> pageItems = [
  PageItem(OverviewPageDisplayName, OverviewPageRoute),
  PageItem(FavoritePageDisplayName, FavoritePageRoute),
  PageItem(TimerPageDisplayName, TimerPageRoute)
];
