FROM node:latest
#TODO: change latest to application version
COPY bugrack/ /frontend/
WORKDIR /frontend/

RUN npm install
CMD ["npm", "run", "dev"]
