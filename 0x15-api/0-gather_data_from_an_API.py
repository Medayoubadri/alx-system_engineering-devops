#!/usr/bin/python3
"""Gather data from an API"""
import requests
import sys


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: {} <employee_id>".format(sys.argv[0]))
        sys.exit(1)

    employee_id = sys.argv[1]
    base_url = "https://jsonplaceholder.typicode.com"
    user_url = f"{base_url}/users/{employee_id}"
    todos_url = f"{base_url}/todos?userId={employee_id}"

    try:
        user_response = requests.get(user_url)
        user_data = user_response.json()
        todos_response = requests.get(todos_url)
        todos_data = todos_response.json()

        employee_name = user_data['name']
        total_tasks = len(todos_data)
        completed_tasks = sum(1 for todo in todos_data if todo['completed'])

        print("Employee {} is done with tasks({}/{}):".format(
            employee_name, completed_tasks, total_tasks))

        for todo in todos_data:
            if todo['completed']:
                print("\t {}".format(todo['title']))

    except requests.exceptions.RequestException as e:
        print("Error: {}".format(e))
        sys.exit(1)
