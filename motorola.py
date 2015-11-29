import urllib.request
import json
from pprint import pprint
import string
import requests 
url = 'http://localhost/cgi/web.html'
resp = urllib.request.urlopen(url).read()
url = 'http://192.168.100.1/mtaLogsData.htm'
resp = urllib.request.urlopen(url).read()
print (resp)
