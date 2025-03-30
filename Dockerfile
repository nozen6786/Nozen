FROM quay.io/souravkl11/nzn-v3:latest

RUN git clone https://github.com/souravkl11/nozen-md /railway/Nozen
WORKDIR /railway/Nozen
ENV TZ=Asia/Kolkata
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
