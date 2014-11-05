## GET /v1/posts
Returns post resources.

### Parameters
* `page` integer - Parameter for pagination
* `per_page` integer - Parameter for pagination

### Example

#### Request
```
GET /v1/posts HTTP/1.1
Accept: application/json
Authorization: Bearer c2c41a13eb43f7b8a627237f58adf95e8004d2954719c34f6a0ad2e95dae7d70
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
ETag: "98752df3f59cfe60a2cc253a6ccaf64e"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-List-TotalCount: 3
X-Request-Id: 53b6d209-8a6f-4ada-b68a-566f9c54db7b
X-Runtime: 0.034927
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "title": "MyString",
    "body": "MyText",
    "published_at": "2014-11-05T07:24:56.126Z"
  },
  {
    "id": 2,
    "title": "MyString",
    "body": "MyText",
    "published_at": "2014-11-05T07:24:56.139Z"
  },
  {
    "id": 3,
    "title": "MyString",
    "body": "MyText",
    "published_at": "2014-11-05T07:24:56.140Z"
  }
]
```

## POST /v1/posts
Creates post resource.

### Parameters
* `title` string (required) - You can not specify title as emtpry string.
* `body` string - Blog contents. Emtpry string is allowed.

### Example

#### Request
```
POST /v1/posts HTTP/1.1
Accept: application/json
Authorization: Bearer 4b1bd9bcb07a3380dc664a92b089fd3c10a59aa764d0bacd3a6ac8c9ee7569bc
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
X-Request-Id: edb6379c-20a1-438b-a8e0-379a16e87ef8
X-Runtime: 0.005975
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
Authorization: Bearer 4f1b3b9480f6d5888325f3ec6be0fa16121f1b66e87e38f3069fcc21e5bc6068
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
ETag: "ee82e01cabf079661b74c81cef483540"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2137b767-a9b1-4204-81c3-e75bfbf44943
X-Runtime: 0.003931
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "title": "MyString",
  "body": "MyText",
  "published_at": "2014-11-05T07:24:56.228Z"
}
```

## PUT /v1/posts/:post_id
Updates post resource.

### Parameters
* `title` string - You can not specify title as emtpry string.
* `body` string - Blog contents. Emtpry string is allowed.
* `published_at` string - If you specify this parameter, we publish the blog with current time. The parameter value is ignored. 

### Example

#### Request
```
PUT /v1/posts/1 HTTP/1.1
Accept: application/json
Authorization: Bearer 7ab4b2f07f7047af16205c8ee97399be06eed0c10118505887b7271640c215ee
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
X-Request-Id: c129f491-80ad-49f9-9179-88d066fbb2db
X-Runtime: 0.005445
X-XSS-Protection: 1; mode=block
```

## DELETE /v1/posts/:post_id
Deletes post resource.

### Example

#### Request
```
DELETE /v1/posts/1 HTTP/1.1
Accept: application/json
Authorization: Bearer d87a4805d241111e9200ab5788e8892845d9438fff9db2e6190802af42f64569
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
X-Request-Id: fc9e1862-1868-4b3f-af6c-159d593452ed
X-Runtime: 0.004532
X-XSS-Protection: 1; mode=block
```
