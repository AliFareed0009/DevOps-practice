
# #*************#
# # This is for Simple Docker image >>> Size of the image will be minum 553MB #

# FROM ubuntu:latest

# # Set the working directory in the image
# WORKDIR /app

# # Copy the files from the host file system to the image file system
# COPY . /app

# # Install the necessary packages
# RUN apt-get update && apt-get install -y python3 python3-pip

# # Set environment variables
# ENV NAME World

# # Run a command to start the application
# CMD ["python3", "app.py"]

# END #

#*************#
# This is for Multi-staging Docker image >>> Size of the image will be minum 55MB #

#####################
# Building a binary #
#####################

# Name is "build" as alias
FROM ubuntu AS build

# Set the working directory in the image
WORKDIR /app

# Copy the files from the host file system to the image file system
COPY . /app

# Install the necessary packages
RUN apt-get update && apt-get install -y python3 python3-pip


# Set environment variables
ENV NAME World

##############################
# Building multi stage image #
##############################

# Distroless image use for multi stage image building image size will be 14.8 MB
# FROM gcr.io/distroless/base-nossl

# Distroless image use for multi stage image building image size will be 52 MB
FROM gcr.io/distroless/python3

# binary gets copied from the first stage into the next stage.
# "build is FROM 1st line"
COPY --from=build /app /app

# Run a command to start the application
CMD ["python3", "app.py"]