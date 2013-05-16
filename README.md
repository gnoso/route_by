# route_by
Route_By allows you to use a field other than ID for identifying object identities in your routes.

## Install
To install, simply run the following command from your project:

```script
script/plugin install https://github.com/gnoso/route_by.git
```

## Usage
In your ActiveRecord model classes, simply add the route_by declaration:

class Car < ActiveRecord::Base
route_by :name
end

As a result of this statement, assuming your Car object has an id of 114 and
a :name attribute with the value "eleanor", result this:

original:: http://server.com/cars/114
w/ route_by:: http://server.com/cars/eleanor