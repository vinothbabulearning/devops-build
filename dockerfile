# Use a base image that includes Node.js and npm 
FROM node:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the build folder from your local machine to the container
COPY ./build ./build

# Install a simple server for serving static content
RUN npm install -g serve

# Expose port 3000 (or the port your React app is running on)
EXPOSE 3000

# Command to run your application when the container starts
CMD ["serve", "-s", "build"]
