```java
package com.creatorhub.util;

import java.net.URI;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public final class DBConnection {

    private DBConnection() {
    }

    public static Connection getConnection() throws SQLException {
        String databaseUrl = System.getenv("DATABASE_URL");

        if (databaseUrl == null || databaseUrl.trim().isEmpty()) {
            throw new SQLException(
                "DATABASE_URL is not configured. Add it to Replit Secrets."
            );
        }

        try {
            URI uri = URI.create(databaseUrl.trim());
            String scheme = uri.getScheme();

            if (scheme == null ||
                !(scheme.equalsIgnoreCase("postgres") ||
                  scheme.equalsIgnoreCase("postgresql"))) {
                throw new SQLException(
                    "DATABASE_URL must be a PostgreSQL connection URI."
                );
            }

            String host = uri.getHost();
            int port = uri.getPort() == -1 ? 5432 : uri.getPort();
            String path = uri.getPath();

            if (host == null || path == null || path.length() < 2) {
                throw new SQLException(
                    "DATABASE_URL is missing its host or database name."
                );
            }

            String database = path.substring(1);
            String query = uri.getRawQuery();

            String jdbcUrl = "jdbc:postgresql://" + host + ":" + port
                    + "/" + database
                    + (query == null || query.isEmpty() ? "" : "?" + query);

            Properties properties = new Properties();
            String userInfo = uri.getRawUserInfo();

            if (userInfo != null) {
                int separator = userInfo.indexOf(':');

                if (separator >= 0) {
                    properties.setProperty(
                        "user",
                        URLDecoder.decode(
                            userInfo.substring(0, separator),
                            StandardCharsets.UTF_8.name()
                        )
                    );
                    properties.setProperty(
                        "password",
                        URLDecoder.decode(
                            userInfo.substring(separator + 1),
                            StandardCharsets.UTF_8.name()
                        )
                    );
                } else {
                    properties.setProperty(
                        "user",
                        URLDecoder.decode(
                            userInfo, StandardCharsets.UTF_8.name()
                        )
                    );
                }
            }

            properties.setProperty("sslmode", "require");

            return DriverManager.getConnection(jdbcUrl, properties);

        } catch (IllegalArgumentException e) {
            throw new SQLException(
                "DATABASE_URL is not a valid PostgreSQL connection URI.", e
            );
        } catch (java.io.UnsupportedEncodingException e) {
            throw new SQLException("Unable to decode database credentials.", e);
        }
    }
}
```
