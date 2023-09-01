# Use an official Ruby runtime as a parent image
FROM ruby:3.0.2

# Set the working directory to /app
WORKDIR /app

# Copy the Gemfile and Gemfile.lock from your application directory into the container
COPY Gemfile Gemfile.lock ./

# Install any needed packages specified in Gemfile
RUN bundle install

# Copy the rest of your application code into the container
COPY . .

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
