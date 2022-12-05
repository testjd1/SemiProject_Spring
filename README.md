S.o.S escape :key:

OS : Windows
Language : Java, Javascript, CSS, HTML, etc.
Framework : Spring, Mybatis
Server : Apache Tomcat 9.0 with JSP
Database : Oracle
(API) : google api

Benchmarked Sites: 방탈출 사이트 (소우주, 키이스케이프, 단편선 등등)

Full description of project is in the pdf file(power point)

🔽 :: Downloads :: 다운로드 할 것 (30 min)

1. spring tool 3.9.14
   full distribution on Eclipse 4.17, Windows version :: link: https://github.com/spring-attic/toolsuite-distribution/wiki/Spring-Tool-Suite-3#spring-tool-suite-3914-new-and-noteworthy

2. oracle database express edition
   Oracle Database 11gR2 Express Edition for Windows x64 :: link: https://www.oracle.com/database/technologies/xe-prior-release-downloads.html

3. SQL developer
   Windows 64-bit with JDK 11 included :: link: https://www.oracle.com/database/sqldeveloper/technologies/download/

4. Apache Tomcat
   32-bit/64-bit Windows Service Installer :: link: https://tomcat.apache.org/download-90.cgi

5. Github
   <sosBoard> :: link: https://github.com/testjd1/SemiProject_Spring

▶️ :: After Downloads :: 다운로드 후에 할 것 (15 min)

1. SQL
   1.1 command prompt

At the command prompt: sqlplus
Enter user-name: <system> / Enter password: <admin>
CREATE USER sam IDENTIFIED BY tiger;
GRANT connect, resource TO sam;
1.2 Open sql Developer: click folder sqldeveloper > sqldeveloper.exe

    1.3 Make a connection using sam, tiger (green + button on top left)

    1.4 Run the file < 3joe.sql >(github) (individual run is ctrl + enter)

2.Spring
2.1 Open sts-bundle: click foler sts-3.9.14 > STS.exe

    2.1.1 Window > Preferences > type (enc) > change all settings to UTF-8 to see comments in Korean

    2.2 move (sosBoard) folder to workspace folder > new project named sosBoard > automatical import (sosBoard)

    2.3 build path: right click (sosBoard) > Build Path > Configure Build Path > Library > add External jars >


        If lombok does not work(getterSette error): create getters and setters for sosBoard/src/main/java/com.javassem.domain VOs
        : right click > Source > Generate Getters and Setters for all VO

    2.4 create Server: click Window > Show View > Other > Servers > right click > New Server >
        Apache > Tomcat v8.0 > select where Tomcat is installed > Finish

    2.5 open with chrome: Window > browser > Chrome

⭕ :: Changes in files :: 파일 안에서 바꿀 것 (5 min)

1. sosBoard > src > main > webapp > WEB-INF > spring > root-context.xml change ip address @192.168.0.56:1521:xe to @(your local ip address):1521/xe

2. sosBoard > src/main/java > com.javassem.controller > UserController.java

➰ :: Insert Records into DB :: 디비에 값 넣기 (1h)
spring (src) > main > webapp > start.jsp > ( ctrl + alt + F11 ) > run tomcat server >> click '관리자 모드' (manager mode) > goto Goods || Beans > add product

Product image at: (src) > main > webapp > resources > assets > img

Error could occur saying step <=0 --> in that case, in views/index.jsp, change (step to step +1) or add the products before running index

🏃 :: How to run :: 실행하기
spring (src) > main > webapp > start.jsp > ( ctrl + alt + F11 )

'관리자 모드' (manager mode) : 관리자 테마 등록, 수정, 삭제 / 예약내역 관리 / board, qna 관리 / 차트 관리(월별매출, 지점별매출 등등)

'방문자용 메인화면' (customer mode): main(index), story, theme(장르별 테마 선택 가능), qna, board, mypage, sign-up/login

❌ :: Errors :: 에러 발생시
check ::아래 것들 확인하기

1. FileName: tomcat server 변경하기 : ** basic > sosBoard **
2. Server: Window > Show view > Other > Servers > Tomcat v9.0 > right click > Clean
3. 파일 경로 확인
4. pom.xml 확인
5. controller, mapper 확인
6. ThemeVO 파일 경로 본인 웹서버 경로로 설정하기 (관리자 테마 등록 관련)
