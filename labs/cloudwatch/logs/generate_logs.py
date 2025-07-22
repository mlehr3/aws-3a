"""
Choose an Output Format: ['JSON', 'ELF']

"""
import json
import random
from datetime import datetime, timedelta
from faker import Faker

fake = Faker()

# Run Configuration
output_format = 'JSON'
num_logs = 100

# Log Configuration
output_filename = "logs.txt"
request_methods = ['GET', 'POST', 'PUT', 'DELETE']
status_codes = [200, 201, 204, 301, 400, 401, 404, 500, 502, 503]
users = ['admin', 'authenticated_user', 'unauthenticated_user']
urls = [
    '/home', '/about', '/contact', '/products', '/services',
    '/login', '/logout', '/signup', '/search', '/profile'
]


def generate_log_entry():
    if output_format == 'JSON':
        input_time_format = '%Y-%m-%dT%H:%M:%S'
    else:
        input_time_format = '%Y-%m-%d %H:%M:%S'

    timestamp = (datetime.now() - timedelta(seconds=random.randint(0, 86400))).strftime(input_time_format)
    log_entry = {
        'timestamp': timestamp,
        'ip': fake.ipv4(),
        'request_method': random.choice(request_methods),
        'url': random.choice(urls),
        'status_code': random.choice(status_codes),
        'user_agent': fake.user_agent(),
    }
    return log_entry


def save_logs_to_file(logs: list[dict]):
    if output_format == 'JSON':
        with open(output_filename, 'w') as file:
            for log in logs:
                file.write(json.dumps(log, separators=(',', ':')) + "\n")
    elif output_format == 'ELF':
        with open(output_filename, 'w') as file:
            for log in logs:
                file.write(f'{log["timestamp"]} {log["ip"]} - {log["user_agent"]}\n')


def main():
    log_entries = [generate_log_entry() for _ in range(num_logs)]
    save_logs_to_file(log_entries)
    print(f'Successfully generated {num_logs} log entries and saved to cloudwatch/logs/{output_filename}')


if __name__ == '__main__':
    main()
