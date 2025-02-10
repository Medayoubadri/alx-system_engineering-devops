#!/usr/bin/python3
"""Export all employee data to JSON"""
import json
import requests


if __name__ == "__main__":
    base_url = "https://jsonplaceholder.typicode.com"
    users_url = f"{base_url}/users"
    todos_url = f"{base_url}/todos"

    try:
        users_response = requests.get(users_url)
        users_data = users_response.json()
        todos_response = requests.get(todos_url)
        todos_data = todos_response.json()

        all_employee_tasks = {}

        for user in users_data:
            user_id = str(user['id'])
            username = user['username']
            user_todos = [todo for todo in todos_data if todo['userId'] == user['id']]

            tasks = []
            for todo in user_todos:
                tasks.append({
                    "username": username,
                    "task": todo['title'],
                    "completed": todo['completed']
                })

            all_employee_tasks[user_id] = tasks

        filename = "todo_all_employees.json"
        with open(filename, 'w') as json_file:
            json.dump(all_employee_tasks, json_file)

        print(f"Data exported to {filename}")

    except requests.exceptions.RequestException as e:
        print("Error: {}".format(e))