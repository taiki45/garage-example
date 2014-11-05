## GET /v1/users
Returns user resources.

### Parameters
* `page` integer - Parameter for pagination.
* `per_page` integer - Parameter for pagination.

### Example

#### Request
```
GET /v1/users HTTP/1.1
Accept: application/json
Authorization: Bearer 867ff0311a0285bbbc82ac4b2b2b0fe8424ab68eefc63dd39a5f0b7edb0db529
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 409
Content-Type: application/json; charset=utf-8
ETag: "0b258f74a824a360e0ee1a67df2899c3"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-List-TotalCount: 4
X-Request-Id: 4091aea5-c0c3-47a0-83df-778ce40c87fa
X-Runtime: 0.007768
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "name": "user18",
    "email": "user18@example.com",
    "_links": {
      "posts": {
        "href": "/v1/users/1/posts"
      }
    }
  },
  {
    "id": 2,
    "name": "user19",
    "email": "user19@example.com",
    "_links": {
      "posts": {
        "href": "/v1/users/2/posts"
      }
    }
  },
  {
    "id": 3,
    "name": "user20",
    "email": "user20@example.com",
    "_links": {
      "posts": {
        "href": "/v1/users/3/posts"
      }
    }
  },
  {
    "id": 4,
    "name": "user21",
    "email": "user21@example.com",
    "_links": {
      "posts": {
        "href": "/v1/users/4/posts"
      }
    }
  }
]
```

## GET /v1/users/:user_id
Returns user resource.

### Example

#### Request
```
GET /v1/users/1 HTTP/1.1
Accept: application/json
Authorization: Bearer 4f0d3f68ead0d7d790bc85b86fccdd80dadc824b60ad928b2a0ac6081c79ff6f
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 99
Content-Type: application/json; charset=utf-8
ETag: "93a8f8d39ae9a3f89d5c2b29c6216ebd"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 5de02f3d-804e-44b4-94e4-51c5a361a0f2
X-Runtime: 0.003719
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "name": "alice",
  "email": "alice@example.com",
  "_links": {
    "posts": {
      "href": "/v1/users/1/posts"
    }
  }
}
```

## PUT /v1/users/:user_id
Updates user resource.

### Parameters
* `name` string (required) - Arbitrary name for user. It's not restricted to be unique.

### Example

#### Request
```
PUT /v1/users/1 HTTP/1.1
Accept: application/json
Authorization: Bearer 162622d20215be96a78d634ea581f6fb125d55aa2c4b230d5af89b2d81634833
Content-Length: 8
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=bob
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Set-Cookie: request_method=PUT; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e2c41e1c-154d-4a0d-9b4e-1f1d4c08f5d2
X-Runtime: 0.005067
X-XSS-Protection: 1; mode=block
```
