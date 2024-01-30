FROM nginx:latest
WORKDIR /var/jenkins_home/workspace/DoDreemUserFrontServiceDeployer

# build-stage에서 생성한 /app/dist의 모든 파일을 /app으로 이동시킨다.
COPY  ./dist /usr/share/nginx/html
EXPOSE 80