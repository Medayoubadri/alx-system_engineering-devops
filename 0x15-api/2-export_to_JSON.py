#!/usr/bin/python3
"""Export data to JSON"""
import json
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

        username = user_data['username']
        filename = f"{employee_id}.json"

        tasks = []
        for todo in todos_data:
            tasks.append({
                "task": todo['title'],
                "completed": todo['completed'],
                "username": username
            })

        json_data = {employee_id: tasks}

        with open(filename, 'w') as json_file:
            json.dump(json_data, json_file)

        print(f"Data exported to {filename}")

    except requests.exceptions.RequestException as e:
        print("Error: {}".format(e))
        sys.exit(1)
