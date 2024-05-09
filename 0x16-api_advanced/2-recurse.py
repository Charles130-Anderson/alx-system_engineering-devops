#!/usr/bin/python3
import requests
"""Contains recurse function"""


def recurse(subreddit, hot_list=[], after=None):
    """A route that returns recurse"""
    req = requests.get(
        "https://www.reddit.com/r/{}/hot.json".format(subreddit),
        headers={"Anderson"},
        params={"after": after},
    )
    if req.status_code == 200:
        for get_data in req.json().get("data").get("children"):
            dat = get_data.get("data")
            title = dat.get("title")
            hot_list.append(title)
        after = req.json().get("data").get("after")
        if after is None:
            return hot_list
        else:
            return recurse(subreddit, hot_list, after)
    else:
        return None
