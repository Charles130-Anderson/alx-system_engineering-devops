#!/usr/bin/python3
"""
Exports to-do list information for a given employee ID to JSON format.
"""

import json
import requests
import sys

if __name__ == "__main__":
    user_id = sys.argv[1]
    base_url = "https://jsonplaceholder.typicode.com/"
    user_data = requests.get(base_url + "users/{}".format(user_id)).json()
    username = user_data.get("username")
    todo_data = requests.get(
        base_url + "todos",
        params={"userId": user_id}
    ).json()
    data_to_export = {
        user_id: [
            {
                "task": task.get("title"),
                "completed": task.get("completed"),
                "username": username
            }
            for task in todo_data
        ]
    }
    with open("{}.json".format(user_id), "w") as jsonfile:
        json.dump(data_to_export, jsonfile, indent=4)
