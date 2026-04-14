# --- Build frontend ---
FROM node:20 AS frontend-build
WORKDIR /app/frontend
COPY frontend/ .
RUN npm install && npm run build

# --- Backend ---
FROM node:20
WORKDIR /app/backend
COPY backend/ .
RUN npm install

# copy built frontend into backend
COPY --from=frontend-build /app/frontend/dist ./public

EXPOSE 5000

CMD ["node", "index.js"]
