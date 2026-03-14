import requests

url = "http://localhost:4499"

try:
    r = requests.get(url)
    if r.status_code == 200:
        print("Application is UP")
    else:
        print("Application is DOWN")
except:
    print("Application is not reachable")