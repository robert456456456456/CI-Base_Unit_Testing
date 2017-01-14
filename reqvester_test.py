__author__ = 'Robert Adin'
import urllib2
import os
def test_req_live(url):
    try:
        ans=urllib2.urlopen(url).read()
        print ans
    except:
        ans='your app down'
    return ans


if test_req_live("http://dockerpyco.tk:5000/")== 'your app down':
    fn = 'faild.txt'
    if os.path.exists(fn):
        fh = open(fn, "r")
    else:
        fh = open(fn, "w")