# השתמש בתמונה הרשמית של Nginx
FROM nginx:alpine
# # --- NETFREE CERT INTSALL ---
# ADD https://netfree.link/dl/unix-ca.sh /home/netfree-unix-ca.sh 
# RUN cat  /home/netfree-unix-ca.sh | sh
# ENV NODE_EXTRA_CA_CERTS=/etc/ca-bundle.crt
# ENV REQUESTS_CA_BUNDLE=/etc/ca-bundle.crt
# ENV SSL_CERT_FILE=/etc/ca-bundle.crt
#  # --- END NETFREE CERT INTSALL ---
    
# העתק את הקבצים הסטטיים (לא לשכוח להריץ קודם build)
COPY build /usr/share/nginx/html
# העתק את קובץ הקונפיגורציה של Nginx
COPY nginx.conf /etc/nginx/nginx.conf
# חשיפת הפורט
EXPOSE 80
# הפעלת ה-Nginx
CMD ["nginx", "-g", "daemon off;"]





