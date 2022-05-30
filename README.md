# santa_flutter

Main file - https://github.com/Kimbeomchul/santa_v3

jenkins : http://ec2-3-35-21-136.ap-northeast-2.compute.amazonaws.com:9090/
app test server : http://ec2-3-35-21-136.ap-northeast-2.compute.amazonaws.com:8080
jupyter : http://ec2-3-35-21-136.ap-northeast-2.compute.amazonaws.com:8888/

Jenkins
1. ERROR: Couldn't find any revision to build. Verify the repository and branch configuration for this job.
  */master -> */main 으로 브랜치 변경 후 재시도
  
2. 웹훅걸고 자동배포시 EC2 멈춤현상

### how to use
```
sudo pub get
sudo flutter run --no-sound-null-safety
```

## Santa 구성

- Native : Flutter ( IOS , Android 위치정보 스프링으로 리턴 ) 

- F :  Thymeleaf , Vue js 

- B : SpringBoot 

- CI/CD : Docker , Jenkins , AWS (EC2 , RDS ,S3)

- DB : MySQL

- Design : Figma 

- 주피터노트북 시스템 데몬설정 port 8888
- 스프링부트 로그인필터설정
- 스프링부트 세션리스너설정
