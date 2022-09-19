FROM ruby:3.1.2

# Install Dependencies
RUN apt-get update && apt-get install -y build-essential \
		nodejs \
		yarn \
		vim

# Configure the main working directory
ENV APP_DIR /app
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

# Copy the main application
COPY . $APP_DIR
RUN bundle install

CMD rails server -b 0.0.0.0 -p 3000

