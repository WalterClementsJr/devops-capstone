FROM cimg/node:18.12

# Copy source code to working directory
COPY . /home/circleci/project/

RUN cd /home/circleci/project/

# Install dependencies
RUN sudo npm install

# Expose port 9090
EXPOSE 9090

# Run app at container launch
CMD ["npm", "start"]
