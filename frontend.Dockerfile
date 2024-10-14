FROM node:latest
#TODO: change latest to application version
COPY backend/ /backend/
RUN npm install
CMD ["npm", "run", "dev"]
