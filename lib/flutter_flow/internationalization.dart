import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // UpdateBeyondersPage
  {
    'cdloso8v': {
      'en': 'Search',
      'ar': 'بحث',
    },
    '9z2ts7kv': {
      'en': '',
      'ar': '',
    },
    'pc4q953h': {
      'en': 'Id',
      'ar': 'رقم',
    },
    '2sqab7n9': {
      'en': 'First Name',
      'ar': 'الاسم الاول',
    },
    'sr11yulf': {
      'en': '',
      'ar': '',
    },
    'agvh5kzg': {
      'en': 'usama',
      'ar': '',
    },
    'ogxbxqmg': {
      'en': 'Last Name',
      'ar': 'الاسم الاخير',
    },
    'tbtkzzfz': {
      'en': '',
      'ar': '',
    },
    'szp1goev': {
      'en': 'Email',
      'ar': 'البريد الالكتروني',
    },
    '419ssh9m': {
      'en': '',
      'ar': '',
    },
    'zktprh6b': {
      'en': 'Activate User',
      'ar': 'تفعيل المستخدم',
    },
    'rmmwylgd': {
      'en': 'Access Role',
      'ar': 'دور الوصول',
    },
    'n87n6bs9': {
      'en': '',
      'ar': '',
    },
    'igjz2jp6': {
      'en': 'Phone Number',
      'ar': 'رقم الهاتف',
    },
    'uplzm21r': {
      'en': '',
      'ar': '',
    },
    '9ypxnj08': {
      'en': 'Update Beyonder',
      'ar': 'تعديل البيوندر',
    },
    'r079cbq0': {
      'en': 'Assign Supervisor',
      'ar': 'تعيين المشرف',
    },
    'wa8ey22l': {
      'en': 'Home',
      'ar': '',
    },
  },
  // LoginPage
  {
    'jxduewal': {
      'en': 'BC',
      'ar': 'BC',
    },
    'o4f1d35l': {
      'en': 'Admin',
      'ar': 'BC',
    },
    'hozih48i': {
      'en': 'Email',
      'ar': 'البريد الألكتروني',
    },
    '1cajl1fs': {
      'en': 'usamaomarsoftware@gmail.com',
      'ar': '',
    },
    'bqk9giez': {
      'en': 'Password',
      'ar': 'كلمة السر',
    },
    'a6y7sr5r': {
      'en': 'password',
      'ar': '',
    },
    'i7fxagal': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    'k9jjr4db': {
      'en': 'Home',
      'ar': '',
    },
  },
  // DashBoardPage
  {
    'kk2v3uky': {
      'en': '0',
      'ar': '',
    },
    'qbjyaq95': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Teams
  {
    '8t2n3e5l': {
      'en': 'Search',
      'ar': 'بحث',
    },
    'syaum358': {
      'en': '',
      'ar': '',
    },
    'rdddmvrs': {
      'en': 'Id',
      'ar': 'رقم',
    },
    '8z5xusj5': {
      'en': 'Name',
      'ar': 'الاسم',
    },
    '2o3t125q': {
      'en': 'Members Count',
      'ar': 'عدد الأعضاء',
    },
    'xhfvlvk9': {
      'en': 'View',
      'ar': 'مشاهدة',
    },
    '4ue4zdhk': {
      'en': 'Edit',
      'ar': 'تعديل',
    },
    '4p2e6gn9': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Side
  {
    '58g39pze': {
      'en': 'BC',
      'ar': 'BC',
    },
    's7k36b0a': {
      'en': 'Platform Navigation',
      'ar': 'شاشة التحكم',
    },
    'p6x6bnqu': {
      'en': 'Dashboard',
      'ar': '',
    },
    '5ogcyy9t': {
      'en': 'Teams',
      'ar': '',
    },
    'uxipiqzd': {
      'en': 'Update Beyonders',
      'ar': 'تعديل البيونديين',
    },
  },
  // AddBeyonderComponent
  {
    'xv1gmp99': {
      'en': 'Add Beyonder',
      'ar': 'أضف بيوندر',
    },
    'tu8qrmxf': {
      'en': 'First Name',
      'ar': 'الاسم الاول',
    },
    '1tmpniha': {
      'en': '',
      'ar': '',
    },
    '2froetlw': {
      'en': 'Last Name',
      'ar': 'الاسم الاخير',
    },
    'lsf79giq': {
      'en': '',
      'ar': '',
    },
    'j7187p0t': {
      'en': 'Email',
      'ar': 'البريد الألكتروي',
    },
    'ul8cyoe4': {
      'en': '',
      'ar': '',
    },
    'zy9v3j0p': {
      'en': 'Phone Number',
      'ar': 'رقم الهاتف',
    },
    '73eh75z3': {
      'en': '',
      'ar': '',
    },
    'oajmo0vw': {
      'en': 'Password',
      'ar': 'كلمة السر',
    },
    'kbfomv79': {
      'en': '',
      'ar': '',
    },
    'd2dzo479': {
      'en': 'Confirm Password',
      'ar': 'التأكيد على كلمة السر',
    },
    'nsoq13v0': {
      'en': '',
      'ar': '',
    },
    'joh94rdi': {
      'en': 'Activate User',
      'ar': 'تفعيل المستخدم',
    },
    't9u141u1': {
      'en': 'Associate',
      'ar': 'معاون',
    },
    'nnwdzdnw': {
      'en': 'Mid Manager',
      'ar': 'مدير',
    },
    'nel928kj': {
      'en': 'Senior',
      'ar': 'سينير',
    },
    'r0yjnfdl': {
      'en': 'General Manager',
      'ar': 'مدير عام',
    },
    '1ijuovha': {
      'en': 'Select Access Role ',
      'ar': '',
    },
    'p3x4tpnh': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'zh0vlh8e': {
      'en': 'Add',
      'ar': 'اضافة',
    },
  },
  // UpdateBeyonderComponent
  {
    'vzkm0ic4': {
      'en': 'Update Team',
      'ar': 'تعديل فريق',
    },
    'nzcdwnx9': {
      'en': 'First Name',
      'ar': 'الاسم الاول',
    },
    'tmhhjhrx': {
      'en': '',
      'ar': '',
    },
    'ey3in0ou': {
      'en': 'Last Name',
      'ar': 'الاسم الاخير',
    },
    'z9qmzzep': {
      'en': '',
      'ar': '',
    },
    'ft4iqtpe': {
      'en': 'Email',
      'ar': 'البريد الألكتروي',
    },
    '82ys83x5': {
      'en': '',
      'ar': '',
    },
    'udiq8hva': {
      'en': 'Phone Number',
      'ar': 'رقم الهاتف',
    },
    '9siocviq': {
      'en': '',
      'ar': '',
    },
    'k5nzd6jc': {
      'en': 'Activate User',
      'ar': 'تفعيل المستخدم',
    },
    'fqjmued9': {
      'en': 'Associate',
      'ar': 'معاون',
    },
    '9qidirjw': {
      'en': 'Mid Manager',
      'ar': 'مدير',
    },
    'a7yfa8k0': {
      'en': 'Senior',
      'ar': 'سينير',
    },
    'vge81re4': {
      'en': 'General Manager',
      'ar': 'مدير عام',
    },
    '1e4gj1m0': {
      'en': 'Please select...',
      'ar': '',
    },
    'xso19f5u': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'dx1fbv22': {
      'en': 'Update',
      'ar': 'تعديل',
    },
  },
  // SetSupervisorComponent
  {
    'x8ic8sdw': {
      'en': 'Assign Supervisor',
      'ar': 'تعيين المشرف',
    },
    'a8nxorsh': {
      'en': 'Search...',
      'ar': '',
    },
    'f8hybb9g': {
      'en': 'Name',
      'ar': '',
    },
    'hlebyqko': {
      'en': 'Edit Column 1',
      'ar': '',
    },
    'vwj6x6nz': {
      'en': 'Email',
      'ar': '',
    },
    'bh10pas3': {
      'en': 'Edit Column 2',
      'ar': '',
    },
    '3yxmjob9': {
      'en': 'Select',
      'ar': '',
    },
    'hdfzad2w': {
      'en': 'Select User',
      'ar': '',
    },
    '7mikyo2l': {
      'en': 'Assign >',
      'ar': '',
    },
    't59k1dnm': {
      'en': '< Remove ',
      'ar': '',
    },
    'q567yuyl': {
      'en': 'Name',
      'ar': '',
    },
    'idnn87l9': {
      'en': 'Edit Column 1',
      'ar': '',
    },
    'zzptie1i': {
      'en': 'Email',
      'ar': '',
    },
    '5ovx99ab': {
      'en': 'Edit Column 2',
      'ar': '',
    },
    'z6gne9ia': {
      'en': 'Select',
      'ar': '',
    },
    'c340awfw': {
      'en': 'Asigned Users',
      'ar': '',
    },
  },
  // AddTeamComponent
  {
    'dyxh5foj': {
      'en': 'Add Team',
      'ar': 'أضافة فريق',
    },
    'h7jquets': {
      'en': 'Team Name',
      'ar': 'اسم الفريق',
    },
    '3zuo6e8w': {
      'en': '',
      'ar': '',
    },
    '82ngdvj0': {
      'en': 'Add',
      'ar': 'اضافة',
    },
  },
  // EditTeamComponent
  {
    'wkh35rur': {
      'en': 'Update Team',
      'ar': 'تعديل فريق',
    },
    'qh3ngelq': {
      'en': 'Team Name',
      'ar': 'اسم الفريق',
    },
    'opqxgo0j': {
      'en': '',
      'ar': '',
    },
    '0fleqr5y': {
      'en': 'Update',
      'ar': 'تعديل',
    },
  },
  // ViewTeamComponent
  {
    'uchq5o9w': {
      'en': 'View Team',
      'ar': 'مشاهدة فريق',
    },
    'hflyxf3d': {
      'en': 'Team Name',
      'ar': 'اسم الفريق',
    },
    '6vyekdb0': {
      'en': 'First Name',
      'ar': 'الاسم الاول',
    },
    'ml2efavv': {
      'en': '',
      'ar': '',
    },
    'j8dlyoa2': {
      'en': 'Close',
      'ar': 'اغلاق',
    },
  },
  // Miscellaneous
  {
    'bjn1695o': {
      'en': '',
      'ar': '',
    },
    'oyhw7hz0': {
      'en': '',
      'ar': '',
    },
    '56tk86tv': {
      'en': '',
      'ar': '',
    },
    'ozbmlm5m': {
      'en': '',
      'ar': '',
    },
    'pfv22dbf': {
      'en': '',
      'ar': '',
    },
    'jbnvymk2': {
      'en': '',
      'ar': '',
    },
    'k9qsa1lq': {
      'en': '',
      'ar': '',
    },
    'rvclg1ca': {
      'en': '',
      'ar': '',
    },
    'dht6ch3o': {
      'en': '',
      'ar': '',
    },
    'cs4qkcyb': {
      'en': '',
      'ar': '',
    },
    '3b3gfonf': {
      'en': '',
      'ar': '',
    },
    'mzjiofpl': {
      'en': '',
      'ar': '',
    },
    'frxmwjn6': {
      'en': '',
      'ar': '',
    },
    'lijhusxp': {
      'en': '',
      'ar': '',
    },
    'hedv5kz8': {
      'en': '',
      'ar': '',
    },
    'eu67hyaq': {
      'en': '',
      'ar': '',
    },
    'q5grr3p3': {
      'en': '',
      'ar': '',
    },
    'e1hgbn58': {
      'en': '',
      'ar': '',
    },
    'x8aglwwm': {
      'en': '',
      'ar': '',
    },
    'kzhh115b': {
      'en': '',
      'ar': '',
    },
    'jfuz5tzp': {
      'en': '',
      'ar': '',
    },
    'x6omp1du': {
      'en': '',
      'ar': '',
    },
    '9djp2gbq': {
      'en': '',
      'ar': '',
    },
    'yess8owu': {
      'en': '',
      'ar': '',
    },
    '4kp6vetp': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
