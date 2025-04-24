# This Dockerfile is used to build a container image for an AWS Lambda function.
FROM public.ecr.aws/lambda/python:3.12

# Copy the function code and requirements file into the container
COPY function/function.py function/requirements.txt /var/task/

# Install the required Python packages
RUN python3.12 -m pip install -r function/requirements.txt

# Set the command to run the Lambda function
CMD [ "function.handler" ]