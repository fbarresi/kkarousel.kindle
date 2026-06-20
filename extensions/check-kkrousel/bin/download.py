
import ssl
import urllib.request

def download_image(url, file_name):
    ssl_context = ssl._create_unverified_context()
    with urllib.request.urlopen(url, context=ssl_context) as u, open(file_name, 'wb') as f:
        f.write(u.read())

if __name__ == '__main__':
    download_image("https://picsum.photos/200/300", "image.png")
