#!/usr/bin/python3
"""Function to print hot posts on a given Reddit subreddit."""
import requests

def top_ten(subreddit):
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10"
    headers = {'User-Agent': 'Mozilla/5.0'}

    response = requests.get(url, headers=headers)

    if response.status_code == 200:
        data = response.json()
        posts = data['data']['children']
        if len(posts) == 0:
            print("No posts found.")
        else:
            for post in posts:
                print(post['data']['title'])
    else:
        print(None)

# Example usage
if __name__ == "__main__":
    subreddit = input("Enter the subreddit: ")
    top_ten(subreddit)
