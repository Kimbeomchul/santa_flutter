# santa_flutter

Main file - https://github.com/Kimbeomchul/santa_v3

jenkins : http://3.35.246.73:9090/
app test server : http://3.35.246.73:8080/
jupyter : http://3.35.246.73:8888/

Jenkins
1. ERROR: Couldn't find any revision to build. Verify the repository and branch configuration for this job.
  */master -> */main 으로 브랜치 변경 후 재시도
  
2. 웹훅걸고 자동배포시 EC2 멈춤현상 ( cpu 99% )

보안
1. 검색창 % 검색시 서버죽음
2. 패킷전송으로 유저정보 볼수있음 (수정도가능)
3. 커뮤니티글 다른사람이 수정가능 
4. 파일확장자 강제변경가능 (완료) 
5. 에러페이지 400 , 500
6. XSS - naver lucy 추가 (완료)
7. File 확장자 ,용량 검증 (완료)

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
