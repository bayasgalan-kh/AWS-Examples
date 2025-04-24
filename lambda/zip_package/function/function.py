import json

def handler(event, context):
    message = 'Hello {} {}!'.format(event['first_name'], event['last_name'])
    x = {
        "Type": "Zip Package",
        "Version": "1.0"
    }
    info_json = json.dumps(x);
    print(info_json)
    return {
        'message': message
    }