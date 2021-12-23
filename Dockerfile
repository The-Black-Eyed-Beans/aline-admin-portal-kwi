FROM node:lts-alpine
WORKDIR /app
ENV PORT=3000 REACT_APP_API_BASEURL="http://localhost:8080"
EXPOSE $PORT
COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . ./
CMD ["npm", "start"]