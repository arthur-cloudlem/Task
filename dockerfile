# Use a Node.js base image
FROM node:14

# Set the working directory
WORKDIR /Task

# Copy the application code into the container
COPY . .

# Install the application dependencies
RUN npm install

# Expose the port on which the application will run
EXPOSE 3000

# Set the command to start the application
CMD [ "npm", "start" ]
