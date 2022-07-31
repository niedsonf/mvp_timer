const RootRoute = '/';

const OverviewPageDisplayName = "MvP's";
const OverviewPageRoute = '/mvps';

const FavoritePageDisplayName = "Favoritos";
const FavoritePageRoute = '/fav';

const TimerPageDisplayName = "Timer";
const TimerPageRoute = '/timer';

const HelpPageDisplayName = "Ajuda";
const HelpPageRoute = '/help';

const DonatePageDisplayName = "Donates";
const DonatePageRoute = '/donate';

class PageItem {
  final String name;
  final String route;

  PageItem(this.name, this.route);
}

List<PageItem> pageItems = [
  PageItem(OverviewPageDisplayName, OverviewPageRoute),
  PageItem(TimerPageDisplayName, TimerPageRoute),
  PageItem(FavoritePageDisplayName, FavoritePageRoute),
  PageItem(DonatePageDisplayName, DonatePageRoute),
  PageItem(HelpPageDisplayName, HelpPageRoute),
];
