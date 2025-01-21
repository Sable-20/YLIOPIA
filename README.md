# yliopia

YLIOPIA, otherwise known as `yliopiston opinto-ohjaaja` means "university student's advisor" I decided to make this app because 
not only do I need help organizing I think most university students do :shipit: I am choosing to build this because 
I have always wanted a organizer built for students by students. Yes there are many organizers out there some of them are great like 
`Notion` but they're not what I want.

**In short:** this is a highly opinionated app that maybe not every will agree with.

## Getting Started

This project is a starting point for a Flutter application that follows the
[simple app state management
tutorial](https://flutter.dev/to/state-management-sample).

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/to/resolution-aware-images).

## Localization

This project generates localized messages based on arb files found in
the `lib/src/localization` directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter apps](https://flutter.dev/to/internationalization).

## Data 

The `data` directory will hold files used to persist data across the app when it is closed and restarted. It hold things like config files, databases (or rather it will hold a database on your device, no database is committed to the public repository for obvious reasons).

The most important file in the data directory is probably `config.xml` as this is where user app configuration data is held. As of right now all data is local because I'm too broke to afford firebase or a server to run MySQL on