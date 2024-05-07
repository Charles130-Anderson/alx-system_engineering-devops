import requests

def number_of_subscribers(subreddit):
    """
    Queries the Reddit API and returns the number of subscribers for a given subreddit.
    
    Args:
    - subreddit (str): The name of the subreddit.
    
    Returns:
    - int: The number of subscribers for the given subreddit.
    """
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {"User-Agent": "MyAPI/1.0.0 (by /u/YourUsername)"}
    response = requests.get(url, headers=headers, allow_redirects=False)
    
    if response.status_code == 200:
        data = response.json().get("data")
        if data:
            subscribers = data.get("subscribers")
            return subscribers
    return 0
