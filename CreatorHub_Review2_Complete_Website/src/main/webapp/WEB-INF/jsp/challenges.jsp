<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="com.creatorhub.model.Challenge" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Challenges | CreatorHub</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">


    <style>

        /* ==========================================
           CREATORHUB CHALLENGES PAGE
           ========================================== */

        .ch-page {
            max-width: 1180px;
            margin: 0 auto;
            padding: 55px 28px 80px;
        }


        /* HEADER */

        .ch-header {
            margin-bottom: 38px;
        }

        .ch-eyebrow {
            margin: 0 0 10px;
            color: #5b4ce1;
            font-size: 13px;
            font-weight: 800;
            letter-spacing: 2px;
        }

        .ch-header h1 {
            margin: 0 0 12px;
            color: #20243d;
            font-size: 48px;
            line-height: 1.1;
            letter-spacing: -1.5px;
        }

        .ch-header p {
            margin: 0;
            color: #667085;
            font-size: 17px;
            line-height: 1.6;
        }


        /* GRID */

        .ch-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 24px;
    align-items: stretch;
    margin-bottom: 0;
}


        /* CARD */

        .ch-card {
            display: flex;
            flex-direction: column;
            min-height: 510px;
            padding: 26px;
            background: #ffffff;
            border: 1px solid #e7eaf0;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(20, 30, 60, 0.05);
            transition: transform .2s ease,
                        box-shadow .2s ease;
        }

        .ch-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 16px 35px rgba(20, 30, 60, 0.09);
        }


        /* CATEGORY */

        .ch-category {
            align-self: flex-start;
            display: inline-block;
            padding: 7px 12px;
            margin-bottom: 20px;
            border-radius: 999px;
            background: #efedff;
            color: #5146e5;
            font-size: 13px;
            font-weight: 750;
        }


        /* TITLE */

        .ch-title {
            margin: 0 0 13px;
            color: #20243d;
            font-size: 24px;
            line-height: 1.25;
            letter-spacing: -.4px;
        }


        /* DESCRIPTION */

        .ch-description {
            min-height: 72px;
            margin: 0 0 22px;
            color: #667085;
            font-size: 15px;
            line-height: 1.6;
        }


        /* DETAILS BOX */

        .ch-details {
            margin-top: 5px;
            padding: 15px 0;
            border-top: 1px solid #edf0f4;
            border-bottom: 1px solid #edf0f4;
        }

        .ch-detail {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            gap: 15px;
            padding: 8px 0;
            font-size: 14px;
        }

        .ch-detail-label {
            color: #667085;
            font-weight: 600;
        }

        .ch-detail-value {
            color: #20243d;
            font-weight: 700;
            text-align: right;
        }


        /* PRIZE */

        .ch-prize {
            margin-top: 18px;
            padding: 16px;
            border-radius: 12px;
            background: #fff8df;
        }

        .ch-prize-label {
            display: block;
            margin-bottom: 5px;
            color: #8a6500;
            font-size: 12px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: .8px;
        }

        .ch-prize-value {
            margin: 0;
            color: #5f4700;
            font-size: 15px;
            font-weight: 700;
            line-height: 1.5;
        }


        /* BUTTON AREA */

        .ch-action {
            margin-top: auto;
            padding-top: 20px;
        }

        .ch-button {
            display: block;
            width: 100%;
            box-sizing: border-box;
            padding: 13px 18px;
            border: 0;
            border-radius: 11px;
            background: #5146e5;
            color: #ffffff;
            text-align: center;
            text-decoration: none;
            font-size: 14px;
            font-weight: 750;
            cursor: pointer;
        }

        .ch-button:hover {
            background: #4338ca;
        }


        /* WHY SECTION */

       .ch-why {
    margin-top: 100px;
    padding: 55px 0 0;
    border-top: 1px solid #e2e5ec;
    clear: both;
}

        .ch-why-eyebrow {
            margin: 0 0 10px;
            color: #5b4ce1;
            font-size: 13px;
            font-weight: 800;
            letter-spacing: 2px;
        }

        .ch-why h2 {
            margin: 0 0 12px;
            color: #20243d;
            font-size: 32px;
            letter-spacing: -.8px;
        }

        .ch-why-intro {
            max-width: 720px;
            margin: 0 0 30px;
            color: #667085;
            font-size: 16px;
            line-height: 1.7;
        }

      .ch-benefits {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
    margin-top: 28px;
}

        .ch-benefit {
    min-height: 130px;
    padding: 24px;
    background: #ffffff;
    border: 1px solid #e7eaf0;
    border-radius: 16px;
    box-sizing: border-box;
}

        .ch-benefit h3 {
            margin: 0 0 8px;
            color: #20243d;
            font-size: 18px;
        }

        .ch-benefit p {
            margin: 0;
            color: #667085;
            font-size: 14px;
            line-height: 1.6;
        }


        /* EMPTY */

        .ch-empty {
            grid-column: 1 / -1;
            padding: 55px 30px;
            background: #ffffff;
            border: 1px dashed #d5d9e2;
            border-radius: 18px;
            text-align: center;
        }

        .ch-empty h2 {
            margin: 0 0 8px;
            color: #20243d;
        }

        .ch-empty p {
            margin: 0;
            color: #667085;
        }


        /* RESPONSIVE */

        @media (max-width: 900px) {

            .ch-grid {
                grid-template-columns: 1fr 1fr;
            }

            .ch-benefits {
                grid-template-columns: 1fr;
            }

        }


        @media (max-width: 650px) {

            .ch-page {
                padding: 35px 18px 60px;
            }

            .ch-header h1 {
                font-size: 36px;
            }

            .ch-grid {
                grid-template-columns: 1fr;
            }

            .ch-card {
                min-height: auto;
            }

        }

    </style>

</head>


<body>

<%@ include file="header.jspf" %>


<main class="ch-page">


    <!-- HEADER -->

    <section class="ch-header">

        <p class="ch-eyebrow">
            CREATOR CHALLENGES
        </p>

        <h1>
            Compete. Create. Get featured.
        </h1>

        <p>
            Join campus challenges, build your portfolio and win prizes.
        </p>

    </section>


    <!-- CHALLENGES -->

    <section class="ch-grid">

        <%

            List<Challenge> challenges =
                (List<Challenge>) request.getAttribute("challenges");


            if (challenges != null && !challenges.isEmpty()) {

                for (Challenge challenge : challenges) {

        %>


        <article class="ch-card">


            <!-- CATEGORY -->

            <span class="ch-category">
                <%= challenge.getCategory() %>
            </span>


            <!-- TITLE -->

            <h2 class="ch-title">
                <%= challenge.getTitle() %>
            </h2>


            <!-- DESCRIPTION -->

            <p class="ch-description">
                <%= challenge.getDescription() %>
            </p>


            <!-- DETAILS -->

            <div class="ch-details">


                <div class="ch-detail">

                    <span class="ch-detail-label">
                        Deadline
                    </span>

                    <span class="ch-detail-value">
                        <%= challenge.getDeadline() %>
                    </span>

                </div>


                <div class="ch-detail">

                    <span class="ch-detail-label">
                        Team Size
                    </span>

                    <span class="ch-detail-value">
                        <%= challenge.getTeamSize() %>
                    </span>

                </div>


                <div class="ch-detail">

                    <span class="ch-detail-label">
                        Participants
                    </span>

                    <span class="ch-detail-value">
                        <%= challenge.getParticipantCount() %>
                    </span>

                </div>


            </div>


            <!-- PRIZE -->

            <div class="ch-prize">

                <span class="ch-prize-label">
                    Prize
                </span>

                <p class="ch-prize-value">
                    <%= challenge.getPrize() %>
                </p>

            </div>


            <!-- BUTTON -->

            <div class="ch-action">

                <%

                    if (session.getAttribute("studentId") != null) {

                %>


                    <form
                        action="${pageContext.request.contextPath}/join-challenge"
                        method="post">

                        <input
                            type="hidden"
                            name="challengeId"
                            value="<%= challenge.getChallengeId() %>">


                        <button
                            type="submit"
                            class="ch-button">

                            Join Challenge

                        </button>

                    </form>


                <%

                    } else {

                %>


                    <a
                        href="${pageContext.request.contextPath}/"
                        class="ch-button">

                        Login to Join

                    </a>


                <%

                    }

                %>

            </div>


        </article>


        <%

                }

            } else {

        %>


        <div class="ch-empty">

            <h2>
                No challenges available
            </h2>

            <p>
                New creator challenges will appear here soon.
            </p>

        </div>


        <%

            }

        %>


    </section>


    <!-- WHY JOIN -->

    <section class="ch-why">

        <p class="ch-why-eyebrow">
            WHY JOIN?
        </p>

        <h2>
            Build your creator profile.
        </h2>

        <p class="ch-why-intro">
            Participate in campus challenges, work with other students,
            showcase your skills and get featured on CreatorHub.
        </p>


        <div class="ch-benefits">


            <div class="ch-benefit">

                <h3>
                    Build
                </h3>

                <p>
                    Create real projects with other students and
                    gain practical experience.
                </p>

            </div>


            <div class="ch-benefit">

                <h3>
                    Showcase
                </h3>

                <p>
                    Add meaningful projects and achievements
                    to your creator profile.
                </p>

            </div>


            <div class="ch-benefit">

                <h3>
                    Get Featured
                </h3>

                <p>
                    Stand out through campus challenges,
                    projects and community participation.
                </p>

            </div>


        </div>

    </section>


</main>


<%@ include file="footer.jspf" %>

</body>

</html>