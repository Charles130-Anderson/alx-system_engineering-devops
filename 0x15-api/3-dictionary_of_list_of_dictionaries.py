#!/usr/bin/python3
"""Exports to-do list information of all employees to JSON format."""

import json
import requests


def fetch_user_data():
    """Fetch user information and to-do lists for all employees."""
    base_url = "https://jsonplaceholder.typicode.com/"
    users_data = requests.get(base_url + "users").json()
    data_to_export = {}
    for user_data in users_data:
        user_id = user_data["id"]
        user_url = base_url + f"todos?userId={user_id}"
        todos_data = requests.get(user_url).json()
        data_to_export[user_id] = [
            {
                "task": todo.get("title"),
                "completed": todo.get("completed"),
                "username": user_data.get("username"),
            }
            for todo in todos_data
        ]
    return data_to_export


if __name__ == "__main__":
    data_to_export = fetch_user_data()
    with open("todo_all_employees.json", "w") as jsonfile:
        json.dump(data_to_export, jsonfile, indent=4)
