# Use the official Ruby image as the base
FROM ruby:2.6.6

# Set the working directory in the container
WORKDIR /app

# Install system dependencies
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs

# Install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the rest of the application code
COPY . .