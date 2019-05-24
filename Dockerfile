
FROM mhart/alpine-node

# Cd into /app
WORKDIR /app

# Copy package.json into app folder
COPY . /app

# Install dependencies
RUN npm install && npm i -g typescript
RUN tsc -p .

# Start server on port 3000
EXPOSE 80:80
ENV PORT=80

CMD npm start