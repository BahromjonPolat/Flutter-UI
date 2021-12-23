import 'package:flutter/material.dart';
import 'package:flutter_ui/components/exporting_packages.dart';

String _gitHubLink =
    'https://github.com/BahromjonPolat/Flutter-UI-Catalog/tree/main/lib/pages';

List<PageUI> pageList = [
  new PageUI(
    'jhJHJH8hadq',
    "Book Store",
    "Book store UI",
    "",
    "",
    '$_gitHubLink/book_store',
    Icon(CupertinoIcons.book),
    BookStoreMainPage(),
  ),
  new PageUI(
    'jhJHJHasadq',
    "Sport",
    "Sport list",
    "",
    "",
    '$_gitHubLink/sport',
    Icon(CupertinoIcons.sportscourt),
    SportMenPage(),
  ),
  new PageUI(
    'rpA8hadq',
    "Courses",
    "UI",
    "",
    "",
    '$_gitHubLink/courses',
    Icon(Icons.list),
    CoursesMainPage(),
  ),
  new PageUI(
    'as09JBqmdq',
    "Foods",
    "25-08-2021",
    "",
    "25-08-2021",
    '$_gitHubLink/foods',
    Icon(Icons.emoji_food_beverage),
    FoodListMainPage(),
  ),
  new PageUI(
    'opwmUy7Fva',
    "Coffee Bar",
    "26-08-2021",
    "Foydalanilgan Vidjetlar SliverAppBar, SliverList, SliverGrid",
    "26-08-2021",
    '$_gitHubLink/coffee_bar',
    Icon(Icons.emoji_food_beverage_rounded),
    CoffeeBarMainPage(),
  ),
  new PageUI(
    'ade8haq',
    "Hotel UI",
    "Mexmonxona UI",
    "Mexmonxona",
    "31-08-2021",
    '$_gitHubLink/hotel',
    Icon(Icons.hotel),
    HotelMainPage(),
  ),
  new PageUI(
    'adkfaq',
    "Super Mario",
    "08-09-2021",
    "_description",
    "08-09-2021",
    '$_gitHubLink/super_mario',
    Icon(Icons.gamepad_outlined),
    SuperMarioMainPage(),
  ),
  new PageUI(

    'jhJHdfH8hadq',
    "Auth",
    "Login page",
    "---",
    "09-09-2021",
    '$_gitHubLink/authorization',
    Icon(Icons.login),
    AuthSplashScreenPage(),
  ),
  new PageUI(
    'sdfOwaA',
    "Order Food",
    "_subtitle",
    "_description",
    "13-09-2021",
    '$_gitHubLink/order_food',
    Icon(Icons.fastfood_outlined),
    OrderFoodSplashScreenPage(),
  ),
  new PageUI(
    'AR-J4mf',
    "Water Shop",
    "Sub",
    "Desc",
    "15-09-2021",
    '$_gitHubLink/water_shop',
    Icon(Icons.water),
    WaterShopRegisterPage(),
  ),
  new PageUI(
    'dhYw-i',
    "Marks",
    "_subtitle",
    "_description",
    "17-09-2021",
    '$_gitHubLink/students_mark',
    Icon(Icons.play_lesson_outlined),
    MarkListPage(),
  ),
  new PageUI(
    'iwn-nd0',
    "Friendship",
    "Chat App",
    "Imtihonda berilgan vazifa",
    "20-09-2021",
    '$_gitHubLink/friendship',
    Icon(Icons.play_lesson_rounded),
    FriendshipSplashScreenPage(),
  ),
  new PageUI(
    'car_bazarao',
    "Car Bazar",
    "Cars",
    "_description",
    "21-09-2021",
    '$_gitHubLink/car_bazar',
    Icon(Icons.car_rental_outlined),
    CarBazarMainPage(),
  ),
  new PageUI(
    'uab-89bd',
    "Plus Messenger",
    "Telegram UI",
    "_description",
    "22-09-2021",
    '$_gitHubLink/plus_messenger',
    Icon(Icons.add_circle_outline_rounded),
    PlusMessengerMainPage(),
  ),
  new PageUI(
    'barb-ioa',
    "Barber Shop",
    " Awesome barber shop",
    "",
    "23-09-2021",
    '$_gitHubLink/barber_shop',
    Icon(Icons.beach_access_rounded),
    BarberShopSplashScreen(),
  ),
  new PageUI(
    'booking-ui-id',
    "Booking Hotel",
    "Hotel",
    "",
    "24-09-2021",
    '$_gitHubLink/booking_hotel',
    Icon(Icons.local_hotel_outlined),
    BookingHotelSplashScreen(),
  ),
  new PageUI(
    'messaging-idsaa',
    "Messaging App",
    "Chat App",
    "",
    "27-09-2021",
    '$_gitHubLink/messaging_app',
    Icon(CupertinoIcons.chat_bubble),
    MessagingAppMainPage(),
  ),
  new PageUI(
    'ajaiji4omIni',
    "Counter App",
    "",
    "",
    "28-09-2021",
    '$_gitHubLink/counter_app',
    Icon(Icons.countertops_outlined),
    CounterAppMainPage(),
  ),
  new PageUI(
    'kamJKh9ha-a',
    "Fashion App",
    "Fashion",
    "",
    "29-09-2021",
    '$_gitHubLink/fashion',
    Icon(CupertinoIcons.money_dollar),
    FashionPageMain(),
  ),
  new PageUI(
    'ak-O9jnNd',
    "Select Coffee",
    "_subtitle",
    "_description",
    "30-09-2021",
    '$_gitHubLink/select_coffee',
    Icon(Icons.coffee_maker),
    SelectCoffeeMainPage(),
  ),
  new PageUI(
    'adla-aknraKKHm',
    "Furniture App",
    "_subtitle",
    "_description",
    "01-10-2021",
    '$_gitHubLink/furniture_shop',
    Icon(Icons.chair),
    FurnitureShopMainPage(),
  ),
  new PageUI(
    '-ankanden',
    "Yacht",
    "_subtitle",
    "_description",
    "01-10-2021",
    '$_gitHubLink/yacht',
    Icon(Icons.chair),
    YachtMainPage(),
  ),
  new PageUI(
    'adakOpr',
    "Coffee Delivery",
    "Coffee",
    "_",
    "04-10-2021",
    '$_gitHubLink/coffee_delivery',
    Icon(Icons.coffee_maker),
    OnBoardingPage(),
  ),
  new PageUI(
    'adkao-dam',
    "Tic Tac Toe",
    "",
    "_description",
    "06-10-2021",
    '$_gitHubLink/tic_tac_toe',
    Icon(Icons.clear),
    TicTacToe(),
  ),
  new PageUI(
    'alKr09ff',
    "Rate Exchange",
    "",
    "",
    "06-10-2021",
    '$_gitHubLink/currency',
    Icon(Icons.monetization_on_outlined),
    CurrencyPage(),
  ),
  new PageUI(
    'zlklKrna-or',
    "Tapping Game",
    "",
    "",
    "06-10-2021",
    '$_gitHubLink/tapping_game',
    Icon(Icons.touch_app_outlined),
    TappingGame(),
  ),
  new PageUI(
    'airna-uMndne',
    "Azan time",
    "",
    "",
    "08-10-2021",
    '$_gitHubLink/praying_time',
    Icon(Icons.dark_mode),
    PrayerTimeWelcomeSceen(),
  ),
  new PageUI(
    'zfv-9fjTd',
    "Pics",
    "",
    "",
    "12-10-2021",
    '$_gitHubLink/picsum',
    Icon(Icons.picture_in_picture_alt_sharp),
    PicListMain(),
  ),
  new PageUI(
    'ak-0OndalmMh',
    "Free Dictionary",
    "",
    "",
    "12-10-2021",
    '$_gitHubLink/free_dictionary',
    Icon(Icons.library_books),
    FreeDictionary(),
  ),
  new PageUI(
    'akf-nkU',
    "Audio Player",
    "",
    "",
    "13-10-2021",
    '$_gitHubLink/music_player',
    Icon(Icons.audiotrack_outlined),
    AudioPlayerMainPage(),
  ),
  new PageUI(
    'kljalkfKHjf9a',
    "Cars",
    "",
    "",
    "14-10-2021",
    '$_gitHubLink/car_list',
    Icon(Icons.car_rental),
    CarListMainPage(),
  ),
];
