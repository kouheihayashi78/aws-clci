# nginxを使用
FROM nginx:alpine

RUN apk --no-cache add curl

# 作成したHTMLファイルをnginxのデフォルトの公開ディレクトリにコピー
COPY ./index.html /usr/share/nginx/html/index.html

EXPOSE 80

# nginxを起動する
CMD ["nginx", "-g", "daemon off;"]
