# CreatorHub – Review 2 Complete

JSP + JavaBeans + HttpSession + JDBC + MySQL implementation for the Woxsen Web Technologies PBL.

## Features
- Login/logout and HttpSession
- Database-driven Home and Discover
- Category filtering
- One-vote-per-user upvotes with DB UNIQUE constraint
- Create collaboration
- Apply with short pitch
- Creator dashboard with applicants and votes
- Student profile and portfolio
- Challenges and participation

## Run
1. Install JDK 11+, Maven, MySQL 8 and Tomcat 9.
2. Run `sql/creatorhub.sql` in MySQL.
3. Edit `src/main/java/com/creatorhub/util/DBConnection.java` and set your MySQL password.
4. Run `mvn clean package`.
5. Copy `target/creatorhub.war` to Tomcat `webapps/`.
6. Start Tomcat and open `http://localhost:8080/creatorhub/`.

Demo users: `surya@woxsen.edu.in`, `sangeeth@woxsen.edu.in`, `sushennii@woxsen.edu.in`, `ananya@woxsen.edu.in`, `rahul@woxsen.edu.in`
Demo password: `student123`

Do not commit your real database password to GitHub.
