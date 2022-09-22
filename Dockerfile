FROM ruby:3.1.2-slim-buster

# Information about author
LABEL author.name="anhnh-3008" \
  author.email="nguyenhoanganh01a2@gmail.com"

# Install Dependencies
RUN apt-get update -qq && apt-get install -y build-essential \
		nodejs \
		yarn \
		vim \
		default-libmysqlclient-dev

# Set default locale
ENV TZ=Asia/Ho_Chi_Minh

# Configure the main working directory
ENV APP_DIR /app
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

# Copy the main application
COPY . $APP_DIR

# Make entrypoint.sh
COPY docker/*.sh /scripts/
RUN chmod a+x /scripts/*.sh

EXPOSE 3000

ENTRYPOINT ["/scripts/entrypoint.sh"]
