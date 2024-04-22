#!/usr/bin/python3
"""
Using a REST API, for a given employee ID, returns information about his/her TODO list progress.
"""

import sys
import requests

if __name__ == "__main__":
    if len(sys.argv) != 2 or not sys.argv[1].isdigit():
        print("Usage: {} employee_id".format(sys.argv[0]))
        sys.exit(1)

    employee_id = int(sys.argv[1])

    url_user = 'https://jsonplaceholder.typicode.com/users/{}'.format(employee_id)
    url_todos = 'https://jsonplaceholder.typicode.com/todos?userId={}'.format(employee_id)

    try:
        response_user = requests.get(url_user)
        response_todos = requests.get(url_todos)
        user_data = response_user.json()
        todos_data = response_todos.json()
    except requests.exceptions.RequestException as e:
        print("Error:", e)
        sys.exit(1)

    employee_name = user_data.get('name')
    total_tasks = len(todos_data)
    completed_tasks = [task for task in todos_data if task.get('completed')]
    num_completed_tasks = len(completed_tasks)

    print("Employee {} is done with tasks({}/{}):".format(employee_name, num_completed_tasks, total_tasks))
    for task in completed_tasks:
        print("\t{}".format(task.get('title')))
