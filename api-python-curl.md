# API calls using python or curl

### Python

    url = "https://api.github.com/search/repositories?per_page=100&page=1&q=org%3AORGANIZATION+topic%3A"+topic_filters+"+sort%3Aname-asc"

    payload = {}

    headers = {
        'Authorization': 'Basic USERNAME:TOKEN'
    }

    response = requests.request("GET", url, headers=headers, data=payload)


### cURL
curl --request GET --url "https://api.github.com/search/repositories?per_page=100&page=2&q=org%3AORGANIZATION+topic%3ATOPIC_NAME+sort%3Aname-asc" 
--header 'Authorization: Basic USERNAME:TOKEN' | jq '.items[].name'


### Convert Basic authentication username and token to base64

openssl base64 -e <<<USERNAME:TOKEN
VVNFUk5BTUU6VE9LRU4K

openssl base64 -d <<<VVNFUk5BTUU6VE9LRU4K
USERNAME:TOKEN
