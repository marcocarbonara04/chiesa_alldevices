
FROM nginx:alpine


COPY nginx.conf /etc/nginx/conf.d/default.conf


COPY index.html /usr/share/nginx/html/index.html
COPY Build /usr/share/nginx/html/Build
COPY TemplateData /usr/share/nginx/html/TemplateData
COPY StreamingAssets /usr/share/nginx/html/StreamingAssets


EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]