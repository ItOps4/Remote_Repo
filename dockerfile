# Use the official Ubuntu base image
FROM ubuntu:latest

# MAINTAINER Harish
# # Update package lists and install dependencies
# # RUN apt-get update -y && apt-get install python3-pip -y
# # Install Robot Framework using pip
# WORKDIR /app
# COPY . /app
# RUN pip install -r requirements.txt
# # RUN sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/<alternate-mirror>/g' /etc/apt/sources.list \
# #     && apt-get update \
# #     && apt-get install -y chromium chromium-driver
# CMD ["robot", "deltet.robot"]
# # Set the working directory to /app