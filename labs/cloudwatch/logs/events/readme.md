## Created JSON Logs Python Generator
Goal is to create a file like this:
```json
{"timestamp": "2025-07-22T06:19:29", "ip": "28.212.107.246", "request_method": "DELETE", "url": "/login", "status_code": 502, "user_agent": "Mozilla/5.0 (iPod; U; CPU iPhone OS 3_3 like Mac OS X; doi-IN) AppleWebKit/531.20.3 (KHTML, like Gecko) Version/4.0.5 Mobile/8B116 Safari/6531.20.3"}
{"timestamp": "2025-07-21T19:36:51", "ip": "189.133.2.90", "request_method": "POST", "url": "/signup", "status_code": 401, "user_agent": "Mozilla/5.0 (X11; Linux i686; rv:1.9.6.20) Gecko/3831-08-21 10:38:57 Firefox/3.8"}
```
this is often how big data handles JSON
`python generate_json_logs.py > web_server_logs.json`

## Created Ruby SDK to put logs 
