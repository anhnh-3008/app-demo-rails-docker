FROM ruby:3.1.2

# Information about author
LABEL author.name="anhnh-3008" \
  author.email="nguyenhoanganh01a2@gmail.com"

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

# Make entrypoint.sh
COPY docker/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD rails server -b 0.0.0.0 -p 3000
