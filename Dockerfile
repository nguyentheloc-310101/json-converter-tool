# Builder
FROM node:18-alpine as builder
WORKDIR /src

# Cache dependencies first
COPY package.json pnpm-lock.yaml ./
RUN pnpm install

# Copy other files and build
COPY . /src/
RUN pnpm build

# App
#write your code docker