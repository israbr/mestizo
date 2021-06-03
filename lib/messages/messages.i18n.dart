// GENERATED FILE, do not edit!
import 'package:i18n/i18n.dart' as i18n;
	String get _languageCode => 'en';
	String _plural(int count, {String? zero, String? one, String? two, String?few, String? many, String? other}) =>
	i18n.plural(count, _languageCode, zero:zero, one:one, two:two, few:few, many:many, other:other);
String _ordinal(int count, {String? zero, String? one, String? two, String? few, String? many, String? other}) =>
	i18n.ordinal(count, _languageCode, zero:zero, one:one, two:two, few:few, many:many, other:other);
String _cardinal(int count, {String? zero, String? one, String? two, String? few, String? many, String? other}) =>
	i18n.cardinal(count, _languageCode, zero:zero, one:one, two:two, few:few, many:many, other:other);

class Messages {
String get locale => "en";
String get languageCode => "en";
	const Messages();
	LandingMessages get landing => LandingMessages(this);
}

class LandingMessages {
String get locale => "en";
String get languageCode => "en";
	final Messages _parent;
	const LandingMessages(this._parent);
	String get delivery => """Pide Ya A Domicilio""";
}


Map<String, String> get messagesMap => {
	"""landing.delivery""": """Pide Ya A Domicilio""",
};
