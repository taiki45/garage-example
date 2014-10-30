## GET /v1/posts
Returns post resources.

### Example

#### Request
```
GET /v1/posts HTTP/1.1
Accept: application/json
Authorization: Bearer dd916aec5ae04296f50fcc5d1eea85fc1bd0616435ccf2bd27901f47abd6b4ab
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 259
Content-Type: application/json; charset=utf-8
ETag: "5b9577b0049d779b5e3491300d37c106"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e8329760-2541-413d-bedb-3fef358fd031
X-Runtime: 0.030140
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "title": "MyString",
    "body": "MyText",
    "published_at": "2014-10-30T10:53:32.112Z"
  },
  {
    "id": 2,
    "title": "MyString",
    "body": "MyText",
    "published_at": "2014-10-30T10:53:32.124Z"
  },
  {
    "id": 3,
    "title": "MyString",
    "body": "MyText",
    "published_at": "2014-10-30T10:53:32.126Z"
  }
]
```

## POST /v1/posts
Creates post resource.

### Parameters
* `title` string (required)
* `body` string

### Example

#### Request
```
POST /v1/posts HTTP/1.1
Accept: application/json
Authorization: Bearer 65f7faf22fcab4003eaffd381cc5e80cd8d50b46a66016c16ae1b4e4f1087b43
Content-Length: 38
Content-Type: application/json
Host: www.example.com

{
  "title": "abc",
  "body": "body for post"
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 65
Content-Type: application/json; charset=utf-8
ETag: "d1527c1bb64d8c3387b0003fa704db7a"
Location: http://www.example.com/v1/posts/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c2993a25-bc19-41b6-82f9-559f178adc0d
X-Runtime: 0.005770
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "title": "abc",
  "body": "body for post",
  "published_at": null
}
```

## GET /v1/posts/:post_id
Returns post resource.

### Example

#### Request
```
GET /v1/posts/1 HTTP/1.1
Accept: application/json
Authorization: Bearer 48861687cc1b8469142ccca91dc070baa831ef75e5c2f57d1a1fdfe955976cf5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 85
Content-Type: application/json; charset=utf-8
ETag: "ad35897bedcb7b2cafc09073076c4b3b"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 5b4c2f7d-4364-4f4b-8997-c0434b1af756
X-Runtime: 0.003538
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "title": "MyString",
  "body": "MyText",
  "published_at": "2014-10-30T10:53:32.208Z"
}
```

## PUT /v1/posts/:post_id
Updates post resource.

### Parameters
* `title` string
* `body` string
* `published_at` string

### Example

#### Request
```
PUT /v1/posts/1 HTTP/1.1
Accept: application/json
Authorization: Bearer 44c6c67666c8eab88f3111c297e5262b2cd418c017276580f85be06a1438565a
Content-Length: 38
Content-Type: application/json
Host: www.example.com

{
  "title": "abc",
  "body": "body for post"
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Set-Cookie: request_method=PUT; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 631ebc97-127f-47fc-ab5a-0262181ab02c
X-Runtime: 0.004984
X-XSS-Protection: 1; mode=block
```

## DELETE /v1/posts/:post_id
Deletes post resource.

### Example

#### Request
```
DELETE /v1/posts/1 HTTP/1.1
Accept: application/json
Authorization: Bearer debcf8054b4f40d748a732130574a77ed3caf6af2008049e22408eadd022a637
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Set-Cookie: request_method=DELETE; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 8e03861a-a434-41e3-a3c0-90235dc700f2
X-Runtime: 0.003931
X-XSS-Protection: 1; mode=block
```
