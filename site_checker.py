import requests

urls = ["https://www.google.com", "https://www.akamai.com"]

print(f"{'URL':<30} | {'STATUS':<6}")
print("-" * 40)

for url in urls:
    try:
        r = requests.get(url, timeout=5)
        print(f"{url:<30} | {r.status_code:<6}")
    except:
        print(f"{url:<30} | ERROR")
