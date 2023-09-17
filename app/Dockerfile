FROM node:18.12

# Copy source code to working directory
COPY . /home/project/

WORKDIR /home/project/

# Install dependencies
RUN npm install

# Expose port 80
EXPOSE 80

# Run app at container launch
CMD ["npm", "start"]
