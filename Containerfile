# ベースイメージとしてSemeruランタイムを使用
FROM openliberty/open-liberty:full-java17-openj9-ubi

# Open Libertyの設定ファイルをコンテナ内にコピー
COPY --chown=1001:0 /src/main/liberty/config/server.xml /config/

# アプリケーションのWARファイルをコンテナ内にコピー
COPY --chown=1001:0 target/liberty01.war /config/dropins/

RUN configure.sh