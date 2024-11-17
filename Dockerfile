# Stage 1: Build the Angular app
# FROM node:12 AS build
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# RUN npm run build -- --prod

# Stage 2: Serve the app
# FROM nginx:alpine
# COPY --from=build /app/dist/crudtuto-Front /usr/share/nginx/html
# EXPOSE 8085
# CMD ["nginx", "-g", "daemon off;"]

FROM nginx:alpine
COPY dist/crudtuto-Front /usr/share/nginx/html
EXPOSE 8085
CMD ["nginx", "-g", "daemon off;"]

