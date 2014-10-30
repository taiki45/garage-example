## GET /v1/users
Returns user resources.

### Example

#### Request
```
GET /v1/users HTTP/1.1
Accept: application/json
Authorization: Bearer 1dfd6a35f3b3a4d988123eb7232fee08c562690c4a691b0003b5f4a963dc932f
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 217
Content-Type: application/json; charset=utf-8
ETag: "94afb72fe80cc82f1f028f777f6bd412"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: f158de1c-28f4-4463-8495-e8257498a5a8
X-Runtime: 0.006255
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "name": "user15",
    "email": "user15@example.com"
  },
  {
    "id": 2,
    "name": "user16",
    "email": "user16@example.com"
  },
  {
    "id": 3,
    "name": "user17",
    "email": "user17@example.com"
  },
  {
    "id": 4,
    "name": "user18",
    "email": "user18@example.com"
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
Authorization: Bearer 53fd3cf4451f2d113de1ff53d690c6033e0de27ae75f627e6969ecfd4a964b73
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 51
Content-Type: application/json; charset=utf-8
ETag: "51a7f1a20bd971ff60e0de72a42eaba2"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: bcbc56ed-4ccc-4285-bf0a-6a6a35b8d2ef
X-Runtime: 0.003138
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "name": "alice",
  "email": "alice@example.com"
}
```

## PUT /v1/users/:user_id
Updates user resource.

### Parameters
* `name` string (required)

### Example

#### Request
```
PUT /v1/users/1 HTTP/1.1
Accept: application/json
Authorization: Bearer f561ccd10a95d710b0e14bd91e6b1de3a7ae0ce5ef200f177d521fa895beada6
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
X-Request-Id: 15bea134-4ac9-4238-855a-23bc31bad379
X-Runtime: 0.003669
X-XSS-Protection: 1; mode=block
```
