#!/usr/bin/python3
"""
Returns to-do list information for a given employee ID and exports it to CSV.
"""

import csv
import requests
import sys


def export_to_csv(employee_id, user_name, todo_data):
    file_name = "{}.csv".format(employee_id)
    with open(file_name, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['USER_ID', 'USERNAME',
                         'TASK_COMPLETED_STATUS', 'TASK_TITLE'])
        for task in todo_data:
            writer.writerow([
                employee_id,
                user_name, str(task['completed']),
                task['title']])


if __name__ == "__main__":
    base_url = "https://jsonplaceholder.typicode.com/"
    employee_id = sys.argv[1]

    user_response = requests.get(base_url + "users/{}".format(employee_id))
    todo_response = requests.get(
        base_url + "todos",
        params={"userId": employee_id}
        )

    if user_response.status_code != 200:
        print("User data retrieval failed!")
        sys.exit(1)

    if todo_response.status_code != 200:
        print("TODO data retrieval failed!")
        sys.exit(1)

    user_data = user_response.json()
    todo_data = todo_response.json()

    export_to_csv(employee_id, user_data['name'], todo_data)
    print("Data exported to {}.csv".format(employee_id))
