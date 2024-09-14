# @AmRobots_Bots www.hostingup.in
# Use an official Python runtime as a parent image
FROM python:3.10.8-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Run the application
CMD ["python", "-m", "biisal"]
