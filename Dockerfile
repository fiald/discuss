FROM elixir:latest

WORKDIR /app/discuss

RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -&&\
  apt-get install -y nodejs

RUN mix local.hex --force && mix local.rebar --force
RUN mix archive.install hex phx_new 1.5.1 --force
