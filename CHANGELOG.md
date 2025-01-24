# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog],
and this project adheres to [Semantic Versioning].

## [Unstable]

- /

## 1.0.1+0 - 2025-01-24

### Added

- ObjectBox `task` and `group` model for sorting todo tasks

### Fixed

- Internationalization failed to build because of mismatching lcoale codes in the name and in the files `@@locale` field

<details><summary>Internationalization file example (app_zh.arb)</summary>
<p>
```json
{
  "@@locale": "zh",
  "@@author": "Sable Ayala",
  "@@last_modified": "2025-01-23 13:48:41",
  "appTitle": "yliopia",
  "@appTitle": {
    "description": "App title"
  },
  "todoTitle": "待办事项",
  "@todoTitle": {
    "description": "todo list",
    "type": "text"
  }
}
```
</p>
</details>

## 1.0.0+5 - 2025-01-23

### Added 

- `catppuccin` theme as dark theme
- added dependabot

### Fixed

- Resolved [Issue #3 (Higher minimum deployment target required for MacOS)](https://github.com/Sable-20/YLIOPIA/issues/3)
  - Summary: resolved by editing `Podfile` in `macos` build directory
<details><summary>Details of #3</summary>
<p>

```rb
platform :osx, '10.15'

# CocoaPods analytics sends network stats synchronously affecting flutter build latency.
ENV['COCOAPODS_DISABLE_STATS'] = 'true'

project 'Runner', {
  'Debug' => :debug,
  'Profile' => :release,
  'Release' => :release,
}

def flutter_root
  generated_xcode_build_settings_path = File.expand_path(File.join('..', 'Flutter', 'ephemeral', 'Flutter-Generated.xcconfig'), __FILE__)
  unless File.exist?(generated_xcode_build_settings_path)
    raise "#{generated_xcode_build_settings_path} must exist. If you're running pod install manually, make sure \"flutter pub get\" is executed first"
  end

  File.foreach(generated_xcode_build_settings_path) do |line|
    matches = line.match(/FLUTTER_ROOT\=(.*)/)
    return matches[1].strip if matches
  end
  raise "FLUTTER_ROOT not found in #{generated_xcode_build_settings_path}. Try deleting Flutter-Generated.xcconfig, then run \"flutter pub get\""
end

require File.expand_path(File.join('packages', 'flutter_tools', 'bin', 'podhelper'), flutter_root)

flutter_macos_podfile_setup

target 'Runner' do
  use_frameworks!
  use_modular_headers!

  flutter_install_all_macos_pods File.dirname(File.realpath(__FILE__))
  target 'RunnerTests' do
    inherit! :search_paths
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    flutter_additional_macos_build_settings(target)
  end
end
```
</p>
</details> 

## 1.0.0+4 - 2025-01-20

### Added

- config file `data/config.xml`
- data folder `data/`

## [1.0.0+3] - 2025-01-19

### Changed

- Version bumped

### Added

- Dart code metrics added via `DCM`
- `reports.txt` created so that metrics can be visualized in a public file
- quality of life changes from lints in files under `lib/` directory

## [1.0.0+1] - 2025-01-15

- initial release

<!-- Links -->
[keep a changelog]: https://keepachangelog.com/en/1.0.0/
[semantic versioning]: https://semver.org/spec/v2.0.0.html

<!-- Versions -->
[Unstable]: https://github.com/Sable-20/yliopia/compare/v1.0.0%2B3...HEAD
[1.0.0+1]: https://github.com/Sable-20/YLIOPIA/releases/tag/v1.0.0%2B1
[1.0.0+3]: https://github.com/Sable-20/YLIOPIA/releases/tag/v1.0.0%2B3