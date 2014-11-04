Example application for Garage
==============================

Example blog application for [cookpad garage framework](https://github.com/cookpad/garage).

## Getting started
```
# Run tests.
bundle install
bundle exec rake db:create db:migrate
RAILS_ENV=test bundle exec rake db:create db:migrate
bundle exec rspec # All tests should be passed.

# Play with local development server.
bundle exec rails runner 'User.create(name: "alice", email: "alice@example.com")' # creating test user
bundle exec rails s
open http://localhost:3000/oauth/applications # Then create test application
curl -u "$APPLICTION_ID:$APPLICATION_SECRET" -XPOST http://localhost:3000/oauth/token -d 'grant_type=password&username=alice@example.com' # Then you got access token
curl -XGET -H "Authorization: Bearer $ACCESS_TOKEN" http://localhost:3000/v1/users
```
