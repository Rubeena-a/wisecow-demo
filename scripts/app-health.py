
import requests

url = "http://localhost:4499"

try:
    response = requests.get(url)

    if response.status_code == 200:
        print("Application is UP")
        print("HTTP Status Code:", response.status_code)
    else:
        print("Application is DOWN")
        print("HTTP Status Code:", response.status_code)

except Exception as e:
    print("Application is not reachable")
