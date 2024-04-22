#!/usr/bin/python3
"""
Returns to-do list information for a given employee ID.
"""

import requests
import sys

if __name__ == "__main__":
    base_url = "https://jsonplaceholder.typicode.com/"
    employee_id = sys.argv[1]
    user_data = requests.get(base_url + "users/{}".format(employee_id)).json()
    todo_params = {"userId": employee_id}
    todo_data = requests.get(base_url + "todos", todo_params).json()
    completed_tasks = [task.get("title") for task in todo_data
                       if task.get("completed")]
    print("Employee {} is done with tasks({}/{}):".format(
        user_data.get("name"), len(completed_tasks), len(todo_data)))
    [print("\t {}".format(task)) for task in completed_tasks]
