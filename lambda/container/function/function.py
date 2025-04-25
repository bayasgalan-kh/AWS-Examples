import json
from faker import Faker


def handler(event, context):
    fake = Faker()
    fake.name()

    message = 'Hello {} {}!'.format(fake.name())
    x = {
        "Type": "Container example",
        "Version": "1.0"
    }
    info_json = json.dumps(x);
    print(info_json)
    return {
        'message': message
    }