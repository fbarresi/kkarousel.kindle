
import ssl
import urllib.request

def download_image(url, api_key, file_name):
    ssl_context = ssl._create_unverified_context()
    req = urllib.request.Request(url, headers={"X-API-Key": api_key })

    with urllib.request.urlopen(req, context=ssl_context) as u, open(file_name, 'wb') as f:
        f.write(u.read())

if __name__ == '__main__':
    download_image("https://kkarousel.pythonanywhere.com/download",
                   "API-KEY-HERE",
                   "cover.png")
