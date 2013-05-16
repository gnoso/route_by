# route_by
Route_By allows you to use a field other than ID for identifying object identities in your routes.

## Install
To install, simply run the following command from your project:

```script
script/plugin install https://github.com/gnoso/route_by.git
```

## Usage
In your ActiveRecord model classes, simply add the route_by declaration:

```ruby
class Car < ActiveRecord::Base
  route_by :name
end
```

As a result of this statement, assuming your class object (Car in this instance) has an id of 114 and
a :name attribute with the value "eleanor", the ID of the record is now eleanor instead of 114.
