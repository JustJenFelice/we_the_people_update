# WeThePeopleUpdate

`we_the_people_update` is an updated gem to access the updated [We The People](https://petitions.whitehouse.gov) petitions API, forked from [https://github.com/jm/we_the_people](https://github.com/jm/we_the_people)

## Installation

Add this line to your application's Gemfile:

    gem 'we_the_people_update'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install we_the_people_update

# Quickstart

Here are a few example calls:

```ruby
>> petition = WeThePeopleUpdate::Resources::Petition.find("1234")
>> petition.body
# => "Example body"
>> petition.title
# => "My Example Petition"
>> petition.issues.first.name
# => "Civil Rights"

>> petitions = WeThePeopleUpdate::Resources::Petition.all
>> petition2 = petitions.first

# Signatures
>> petition2.signatures.all.first.city
# => "Orlando"
```

# Configuration

You can configure a few options on the `WeThePeopleUpdate` module:

* `api_key` - Your We The People API key (optional).
* `default_page_size` - The page size to request by default for all resources.
* `status` - Filter results by petition status
* `isPublic` - When set to 1, this will only return petitions accepting signatures. When set to 0, returns only un-signable petitions.
* `isSignable` - When set to 1, this will only return petitions accepting signatures. When set to 0, returns only un-signable petitions.
* `createdBefore` - Filters results to display items created before specified date or time.
* `createdAfter` - Filters results to display items created before specified date or time.
* `limit` - The maximum number of results that may be returned. Maximum limit is 1000.
* `title` - Filters results by keyword or phrase in the Title.
* `body` - Filters results by keyword or phrase in the Body.
* `city` - Filters results by associated city.
* `state` - Filters results by associated state.
* `client` - If you don't want to use `rest-client` you can substitute in another HTTP client object that conforms to the same API here.
* `mock` - If set to "1", all requests will return mock results.

# Contributing

Hack some code, make a pull request.  I'll review it and merge it in!  Need some ideas as to where to get started?  Here are a few:

* Tests.  Please?
* Make resources be able to be related + associated.  It looks like responses may end up going this route.
* Documentationages.
