
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CreatorHub Login</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">

    <style>
        .login-page {
            min-height: calc(100vh - 80px);
            display: flex;
            align-items: center;
            padding: 70px 0;
        }

        .login-layout {
            width: min(1100px, 92%);
            margin: 0 auto;
            display: grid;
            grid-template-columns: 1.15fr 0.85fr;
            gap: 80px;
            align-items: center;
        }

        .login-brand {
            margin-bottom: 35px;
            font-size: 28px;
            font-weight: 800;
            letter-spacing: -1px;
        }

        .login-brand span {
            color: var(--primary);
        }

        .login-eyebrow {
            margin-bottom: 15px;
            color: var(--primary);
            font-size: 14px;
            font-weight: 800;
            letter-spacing: 4px;
            text-transform: uppercase;
        }

        .login-title {
            max-width: 600px;
            margin: 0 0 22px;
            font-size: clamp(44px, 5vw, 68px);
            line-height: 0.98;
            letter-spacing: -3px;
        }

        .login-title span {
            color: var(--primary);
        }

        .login-description {
            max-width: 620px;
            margin-bottom: 38px;
            color: var(--muted);
            font-size: 18px;
            line-height: 1.7;
        }

        .login-features {
            display: grid;
            gap: 20px;
        }

        .login-feature {
            display: flex;
            align-items: center;
            gap: 18px;
        }

        .login-feature-number {
            width: 42px;
            height: 42px;
            flex: 0 0 42px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 12px;
            background: var(--soft);
            color: var(--primary);
            font-weight: 800;
        }

        .login-feature strong {
            display: block;
            margin-bottom: 2px;
            font-size: 17px;
        }

        .login-feature p {
            margin: 0;
            color: var(--muted);
            font-size: 14px;
        }

        .login-card {
            padding: 38px;
            background: var(--white);
            border: 1px solid var(--line);
            border-radius: 24px;
            box-shadow: var(--shadow);
        }

        .login-card-eyebrow {
            margin-bottom: 12px;
            color: var(--primary);
            font-size: 13px;
            font-weight: 800;
            letter-spacing: 3px;
            text-transform: uppercase;
        }

        .login-card h1 {
            margin: 0 0 8px;
            font-size: 34px;
            letter-spacing: -1.5px;
        }

        .login-card-subtitle {
            margin: 0 0 28px;
            color: var(--muted);
        }

        .login-form {
            display: grid;
            gap: 18px;
        }

        .login-form label {
            display: block;
            margin-bottom: 8px;
            font-weight: 700;
            font-size: 14px;
        }

        .login-form input {
            width: 100%;
            padding: 15px 16px;
            border: 1px solid var(--line);
            border-radius: 12px;
            background: var(--white);
            color: var(--text);
            font: inherit;
            outline: none;
            box-sizing: border-box;
        }

        .login-form input:focus {
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(87, 70, 232, 0.10);
        }

        .login-button {
            width: 100%;
            margin-top: 4px;
            padding: 15px 18px;
            border: 0;
            border-radius: 12px;
            background: var(--primary);
            color: white;
            font: inherit;
            font-weight: 800;
            cursor: pointer;
            transition: 0.2s ease;
        }

        .login-button:hover {
            background: var(--primary-dark);
            transform: translateY(-1px);
        }

        .continue-link {
            display: inline-block;
            margin-top: 22px;
            color: var(--primary);
            font-weight: 700;
        }

        .continue-link:hover {
            text-decoration: underline;
        }

        .login-error {
            margin-bottom: 20px;
            padding: 12px 14px;
            border-radius: 10px;
            background: #fff0f1;
            color: var(--danger);
            font-size: 14px;
            font-weight: 600;
        }

        @media (max-width: 850px) {
            .login-layout {
                grid-template-columns: 1fr;
                gap: 45px;
            }

            .login-page {
                padding: 45px 0;
            }

            .login-title {
                font-size: 48px;
            }
        }

        @media (max-width: 500px) {
            .login-card {
                padding: 25px;
            }

            .login-title {
                font-size: 40px;
                letter-spacing: -2px;
            }
        }
    </style>
</head>

<body>
<main class="login-page">
    <div class="login-layout">

        <!-- LEFT SIDE -->
        <section>
            <div class="login-brand">
                Creator<span>Hub</span>
            </div>

            <div class="login-eyebrow">
                Student Creator Community
            </div>

            <h2 class="login-title">
                Find Your <span>Creative Collaborator</span>
            </h2>

            <p class="login-description">
                Connect with students, create projects, showcase your work
                and discover exciting campus collaborations.
            </p>

            <div class="login-features">
                <div class="login-feature">
                    <div class="login-feature-number">01</div>
                    <div>
                        <strong>Discover</strong>
                        <p>Find students and creative opportunities.</p>
                    </div>
                </div>

                <div class="login-feature">
                    <div class="login-feature-number">02</div>
                    <div>
                        <strong>Collaborate</strong>
                        <p>Apply to projects with a short pitch.</p>
                    </div>
                </div>

                <div class="login-feature">
                    <div class="login-feature-number">03</div>
                    <div>
                        <strong>Showcase</strong>
                        <p>Build your creator profile and portfolio.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- RIGHT SIDE -->
        <section class="login-card">
            <div class="login-card-eyebrow">
                Student Login
            </div>

            <h1>Welcome back.</h1>

            <p class="login-card-subtitle">
                Sign in with your university account to continue.
            </p>

            <% if (request.getParameter("error") != null) { %>
                <div class="login-error">
                    Invalid email or password. Please try again.
                </div>
            <% } %>

            <form
                class="login-form"
                action="${pageContext.request.contextPath}/login"
                method="post">

                <div>
                    <label for="email">University Email</label>
                    <input
                        type="email"
                        id="email"
                        name="email"
                        placeholder="Enter your university email"
                        autocomplete="username"
                        required>
                </div>

                <div>
                    <label for="password">Password</label>
                    <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="Enter your password"
                        autocomplete="current-password"
                        required>
                </div>

                <button type="submit" class="login-button">
                    Login
                </button>
            </form>

            <a
                class="continue-link"
                href="${pageContext.request.contextPath}/home">
                Continue without Login →
            </a>
        </section>

    </div>
</main>
</body>
</html>
