import 'package:faker_dart/src/models/faker_locale.dart';
import 'package:faker_dart/src/utils/locale_utils.dart';

import 'address.dart';
import 'animal.dart';
import 'commerce.dart';
import 'company.dart';
import 'database.dart';
import 'datatype.dart';
import 'date.dart';
import 'git.dart';
import 'hacker.dart';
import 'image.dart';
import 'internet.dart';
import 'lorem.dart';
import 'music.dart';
import 'name.dart';
import 'phone_number.dart';

/// generate massive amounts of fake data in dart!
class Faker {
  Faker._internal();

  /// [Faker] singleton
  static final Faker instance = Faker._internal();

  /// default locale will always be English
  FakerLocale _locale = LocaleUtils.generateLocale(FakerLocaleType.en);

  /// currently active locale
  FakerLocale get locale => _locale;

  /// set a locale from one of the included locales
  void setLocale(FakerLocaleType type) =>
      _locale = LocaleUtils.generateLocale(type);

  /// set a custom locale
  void setCustomLocale(FakerLocale locale) => _locale = locale;

  /// {@template datatype}
  /// generate random data types
  /// {@endtemplate}
  final DataType datatype = DataType();

  /// {@template image}
  /// generate random  valid image urls from different sources
  /// {@endtemplate}
  Image get image => Image(instance);

  /// {@template name}
  /// generate random names & jobs
  /// {@endtemplate}
  Name get name => Name(instance);

  /// {@template address}
  /// generate random addresses
  /// {@endtemplate}
  Address get address => Address(instance);

  /// {@template animal}
  /// generate random animals
  /// {@endtemplate}
  Animal get animal => Animal(instance);

  /// {@template commerce}
  /// generate random commerce related items
  /// {@endtemplate}
  Commerce get commerce => Commerce(instance);

  /// {@template company}
  /// generate random company related items
  /// {@endtemplate}
  Company get company => Company(instance);

  /// {@template database}
  /// generate random database related items
  /// {@endtemplate}
  Database get database => Database(instance);

  /// {@template music}
  /// generate random music related items
  /// {@endtemplate}
  Music get music => Music(instance);

  /// {@template hacker}
  /// generate random music related items
  /// {@endtemplate}
  Hacker get hacker => Hacker(instance);

  /// {@template git}
  /// generate random git related items
  /// {@endtemplate}
  Git get git => Git(instance);

  /// {@template date}
  /// generate random date related items
  /// {@endtemplate}
  Date get date => Date(instance);

  /// {@template phoneNumber}
  /// generate random phone numbers and formats
  /// {@endtemplate}
  PhoneNumber get phoneNumber => PhoneNumber(instance);

  /// {@template lorem}
  /// generate random word and text related items
  /// {@endtemplate}
  Lorem get lorem => Lorem(instance);

  /// {@template internet}
  /// generate random internet related items
  /// {@endtemplate}
  Internet get internet => Internet(instance);

  /// Generator method for combining faker methods based on string input
  ///
  /// __Example:__
  ///
  /// ``` dart
  // ignore: lines_longer_than_80_chars
  /// print(faker.instance.fake('{{name.lastName}}, {{name.firstName}} {{name.suffix}}'));
  /// outputs: "Marks, Dean Sr."
  /// ```
  ///
  /// This will interpolate the format string with the value of methods
  // ignore: comment_references
  /// [name.lastName], [name.firstName], and [name.suffix],
  ///
  ///
  String fake(String str) {
    var res = '';

    if (str.isEmpty) return str;

    // find first matching {{ and }}
    final start = str.indexOf('{{');
    final end = str.indexOf('}}');

    // if no {{ and }} is found, we are done
    if (start == -1 || end == -1) return str;

    // extract method name from between the {{ }} that we found
    // for example: {{name.firstName}}
    final token = str.substring(start + 2, end);
    var method = token.replaceAll('}}', '').replaceAll('{{', '');
    // split the method into module and function
    var parts = method.split('.');

    if (_namespace[parts[0]] == null) {
      throw ArgumentError('invalid module: ${parts[0]}');
    }
    if (_namespace[parts[0]]![parts[1]] == null) {
      throw ArgumentError('invalid method: ${parts[1]}');
    }

    // assign the function from the namespace
    final fn = _namespace[parts[0]]![parts[1]]!;
    // ignore: avoid_dynamic_calls
    final result = fn();

    // replace the found tag with the returned fake value
    res = str.replaceAll('{{$token}}', result.toString());

    // return the response recursively until we are done finding all tags
    return fake(res);
  }

  /// stores a reference to all faker methods in this package sorted by
  /// module and method name
  Map<String, Map<String, Function>> get _namespace => {
        'datatype': {
          'number': datatype.number,
          'float': datatype.float,
          'dateTime': datatype.dateTime,
          'string': datatype.string,
          'uuid': datatype.uuid,
          'boolean': datatype.boolean,
          'hexaDecimal': datatype.hexaDecimal,
          'json': datatype.json,
          'list': datatype.list,
        },
        'name': {
          'firstName': name.firstName,
          'middleName': name.middleName,
          'lastName': name.lastName,
          'jobTitle': name.jobTitle,
          'gender': name.gender,
          'prefix': name.prefix,
          'suffix': name.suffix,
          'title': name.title,
          'jobDescriptor': name.jobDescriptor,
          'jobArea': name.jobType,
          'jobType': name.jobType,
        },
        'address': {
          'zipCode': address.zipCode,
          'city': address.city,
          'cityPrefix': address.cityPrefix,
          'citySuffix': address.citySuffix,
          'cityName': address.cityName,
          'streetName': address.streetName,
          'streetSuffix': address.streetSuffix,
          'streetPrefix': address.streetPrefix,
          'streetAddress': address.streetAddress,
          'secondaryAddress': address.secondaryAddress,
          'county': address.county,
          'country': address.country,
          'countryCode': address.countryCode,
          'state': address.state,
          'stateAbbr': address.stateAbbr,
          'latitude': address.latitude,
          'longitude': address.longitude,
          'direction': address.direction,
          'cardinalDirection': address.cardinalDirection,
          'ordinalDirection': address.ordinalDirection,
          'nearbyGPSCoordinate': address.nearbyGPSCoordinate,
          'timezone': address.timezone,
        },
        'animal': {
          'animal': animal.animal,
          'type': animal.type,
          'dog': animal.dog,
          'cat': animal.cat,
          'snake': animal.snake,
          'bear': animal.bear,
          'lion': animal.lion,
          'cetacean': animal.cetacean,
          'horse': animal.horse,
          'bird': animal.bird,
          'cow': animal.cow,
          'fish': animal.fish,
          'crocodilia': animal.crocodilia,
          'instect': animal.insect,
          'rabbit': animal.rabbit,
        },
        'commerce': {
          'color': commerce.color,
          'department': commerce.department,
          'productName': commerce.productName,
          'price': commerce.price,
          'productAdjective': commerce.productAdjective,
          'productMaterial': commerce.productMaterial,
          'product': commerce.product,
          'productDescription': commerce.productDescription,
        },
        'company': {
          'companyName': company.companyName,
          'companySuffix': company.companySuffix,
          'catchPhrase': company.catchPhrase,
          'bs': company.bs,
          'catchPhraseAdjective': company.catchPhraseAdjective,
          'catchPhraseDescriptor': company.catchPhraseDescriptor,
          'catchPhraseNoun': company.catchPhraseNoun,
          'bsAdjective': company.bsAdjective,
          'bsBuzz': company.bsBuzz,
          'bsNoun': company.bsNoun,
        },
        'database': {
          'column': database.column,
          'type': database.type,
          'collation': database.collation,
          'engine': database.engine,
        },
        'music': {
          'genre': music.genre,
        },
        'hacker': {
          'abbreviation': hacker.abbreviation,
          'adjective': hacker.adjective,
          'noun': hacker.noun,
          'verb': hacker.verb,
          'ingverb': hacker.ingverb,
          'phrase': hacker.phrase,
        },
        'git': {
          'branch': git.branch,
          'commitEntry': git.commitEntry,
          'commitMessage': git.commitMessage,
          'commitSha': git.commitSha,
          'shortSha': git.shortSha,
        },
        'date': {
          'past': date.past,
          'future': date.future,
          'between': date.between,
          'month': date.month,
          'weekday': date.weekday,
        },
        'phoneNumber': {
          'phoneNumber': phoneNumber.phoneNumber,
          'phoneFormats': phoneNumber.phoneFormat,
        },
        'lorem': {
          'word': lorem.word,
          'sentence': lorem.sentence,
          'paragraph': lorem.paragraph,
          'text': lorem.text,
        },
        'internet': {
          'url': internet.url,
          'domainName': internet.domainName,
          'domainSuffix': internet.domainSuffix,
          'httpMethod': internet.httpMethod,
          'ip': internet.ip,
          'email': internet.email,
        },
      };
}
