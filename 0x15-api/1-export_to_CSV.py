#!/usr/bin/python3
"""Export data to CSV"""
import csv
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
        filename = f"{employee_id}.csv"

        with open(filename, mode='w', newline='') as csv_file:
            writer = csv.writer(csv_file, quoting=csv.QUOTE_ALL)
            for todo in todos_data:
                writer.writerow([employee_id, username,
                                 str(todo['completed']), todo['title']])

        print(f"Data exported to {filename}")

    except requests.exceptions.RequestException as e:
        print("Error: {}".format(e))
        sys.exit(1)
