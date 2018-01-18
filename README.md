# TimeZone [![Build Status](https://travis-ci.org/imdrasil/time_zone.svg)](https://travis-ci.org/imdrasil/time_zone) [![Latest Release](https://img.shields.io/github/release/imdrasil/time_zone.svg)](https://github.com/imdrasil/time_zone/releases) [![Docs](https://img.shields.io/badge/docs-available-brightgreen.svg)](https://imdrasil.github.io/time_zone/latest/)

**Time Zone** provides daylight savings aware transformations between times in different time zones. Also this is a port of ruby [tzinfo](https://github.com/tzinfo/tzinfo) gem.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  time_zone:
    github: imdrasil/time_zone
```

## Usage

The following code will obtain the America/New_York timezone (as an instance
of `TZInfo::Timezone`) and convert a time in UTC to local New York time:

```crystal
require "time_zone"

tz = TimeZone::Zone.get("America/New_York")
local = tz.utc_to_local(Time.utc(2005,8,29,15,35,0))
```

Note that the local Time returned will be kind of UTC (`local.kind` will
return `Time::Kind::Utc`). This is because the Crystal `Time` class only supports two timezones:
* UTC 
* the current system local timezone.

To convert from a local time to UTC, the `#local_to_utc` method can be used as
follows:

```crystal
utc = tz.local_to_utc(local)
```

Note that the time zone information of the local Time object is ignored (TimeZone
will just read the date and time and treat them as if there were in the `tz`
timezone). The following two lines will return the same result regardless of
the system's local timezone:

```crystal
tz.local_to_utc(Time.new(2006,6,26,1,0,0))
tz.local_to_utc(Time.utc(2006,6,26,1,0,0))
```

The current local time in a `Zone` can be obtained with the
`TimeZone::Zone#now` method:

```crystal
now = tz.now
```

A list of all the available timezone identifiers can be obtained using the
`TimeZone::Zone.all_identifiers` method. `TimeZone::Zone.all` can be called
to get an `Array` of all the `TimeZone::Zone` and `TimeZone::LinkedZone` instances.

Timezones can also be accessed by country (using an ISO 3166-1 alpha-2 country
code). The following code retrieves the `TimeZone::Country` instance representing
the USA (country code 'US') and then gets all the timezone identifiers used in
the USA.

```crystal
us = TimeZone::Country.get('US')
timezones = us.zone_identifiers
```

A list of all the available country codes can be obtained using the
`TimeZone::Country.all_codes` method. `TimeZone::Country.all` can be called to get
an `Array` of all the `Country` instances.

## Development

TODO: Write development instructions here

## Contributing

1. Fork it ( https://github.com/imdrasil/time_zone/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [imdrasil](https://github.com/[your-github-name]) Roman Kalnytskyi - creator, maintainer
