# 어떤 베이스 이미지 쓸건지
FROM node:16-alpine
# 어떤 디렉토리에 어플리케이션 이미지를 복사해올건지
WORKDIR /app
# 프로젝트 파일들 복사해오기
COPY package.json package-lock.json ./
# package.json에 있는 모든 npm을 설치함 ci를 사용하면 좀 더 상세하게 설치함
RUN npm ci

COPY index.js .
# node와 index.js를 실행해라
ENTRYPOINT [ "node", "index.js" ]
