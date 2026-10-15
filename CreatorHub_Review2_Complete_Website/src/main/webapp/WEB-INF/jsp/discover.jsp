<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="com.creatorhub.model.Collaboration" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Discover | CreatorHub</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">


    <style>

        /* ==========================================
           CREATORHUB DISCOVER PAGE
           ========================================== */

        .dc-page {
            max-width: 1180px;
            margin: 0 auto;
            padding: 55px 28px 80px;
        }


        /* HEADER */

        .dc-header {
            margin-bottom: 35px;
        }

        .dc-eyebrow {
            margin: 0 0 10px;
            color: #5b4ce1;
            font-size: 13px;
            font-weight: 800;
            letter-spacing: 2px;
        }

        .dc-header h1 {
            margin: 0 0 12px;
            color: #20243d;
            font-size: 48px;
            line-height: 1.1;
            letter-spacing: -1.5px;
        }

        .dc-header p {
            margin: 0;
            color: #667085;
            font-size: 17px;
            line-height: 1.6;
        }


        /* FILTER */

        .dc-filter {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 32px;
        }

        .dc-filter select {
            width: 290px;
            padding: 13px 15px;
            border: 1px solid #dfe3eb;
            border-radius: 11px;
            background: #ffffff;
            color: #20243d;
            font-family: inherit;
            font-size: 15px;
        }

        .dc-filter button {
            padding: 13px 23px;
            border: none;
            border-radius: 11px;
            background: #5146e5;
            color: #ffffff;
            font-family: inherit;
            font-size: 14px;
            font-weight: 750;
            cursor: pointer;
        }

        .dc-filter button:hover {
            background: #4338ca;
        }


        /* GRID */

        .dc-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 24px;
        }


        /* CARD */

        .dc-card {
            display: flex;
            flex-direction: column;
            min-height: 500px;
            padding: 26px;
            background: #ffffff;
            border: 1px solid #e7eaf0;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(20, 30, 60, 0.05);
            transition: transform .2s ease,
                        box-shadow .2s ease;
        }

        .dc-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 16px 35px rgba(20, 30, 60, 0.09);
        }


        /* TOP */

        .dc-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .dc-category {
            display: inline-block;
            padding: 7px 12px;
            border-radius: 999px;
            background: #efedff;
            color: #5146e5;
            font-size: 13px;
            font-weight: 750;
        }

        .dc-votes {
            color: #5146e5;
            font-size: 14px;
            font-weight: 750;
        }


        /* TITLE */

        .dc-title {
            margin: 0 0 13px;
            color: #20243d;
            font-size: 24px;
            line-height: 1.25;
            letter-spacing: -.4px;
        }


        /* DESCRIPTION */

        .dc-description {
            min-height: 72px;
            margin: 0 0 22px;
            color: #667085;
            font-size: 15px;
            line-height: 1.6;
        }


        /* DETAILS */

        .dc-details {
            padding: 13px 0;
            border-top: 1px solid #edf0f4;
            border-bottom: 1px solid #edf0f4;
        }

        .dc-detail {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            gap: 15px;
            padding: 7px 0;
            font-size: 14px;
        }

        .dc-label {
            color: #667085;
            font-weight: 600;
        }

        .dc-value {
            max-width: 62%;
            color: #20243d;
            font-weight: 700;
            text-align: right;
        }


        /* ACTION */
.dc-action {
    margin-top: 20px;
    padding-top: 18px;
    border-top: 1px solid #edf0f4;
}

.dc-action form {
    margin: 0;
}

.dc-button {
    display: block;
    width: 100%;
    box-sizing: border-box;
    min-height: 44px;
    padding: 12px 16px;
    border: none;
    border-radius: 11px;
    background: #5146e5;
    color: #ffffff;
    font-family: inherit;
    font-size: 14px;
    font-weight: 750;
    line-height: 20px;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
}

.dc-button:hover {
    background: #4338ca;
}

.dc-button.voted {
    background: #e9e7ff;
    color: #5146e5;
    cursor: default;
}

        .dc-button {
            display: block;
            width: 100%;
            box-sizing: border-box;
            padding: 13px 16px;
            border: none;
            border-radius: 11px;
            background: #5146e5;
            color: #ffffff;
            font-family: inherit;
            font-size: 14px;
            font-weight: 750;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
        }

        .dc-button:hover {
            background: #4338ca;
        }

        .dc-button.voted {
            background: #e9e7ff;
            color: #5146e5;
            cursor: default;
        }


        /* APPLY */

        .dc-apply {
    margin-top: 18px;
    padding-top: 16px;
    border-top: 1px solid #edf0f4;
}

.dc-apply summary {
    display: block;
    padding: 4px 0;
    color: #5146e5;
    font-size: 14px;
    font-weight: 750;
    line-height: 22px;
    cursor: pointer;
}

.dc-apply summary::-webkit-details-marker {
    display: none;
}

.dc-apply summary::before {
    content: "+ ";
    font-weight: 900;
}

.dc-apply[open] summary::before {
    content: "− ";
}

        .dc-apply summary {
            list-style: none;
            color: #5146e5;
            font-size: 14px;
            font-weight: 750;
            cursor: pointer;
        }

        .dc-apply summary::-webkit-details-marker {
            display: none;
        }

        .dc-apply summary::before {
            content: "+ ";
            font-weight: 900;
        }

        .dc-apply[open] summary::before {
            content: "− ";
        }


        /* FORM */

        .dc-form {
            margin-top: 15px;
        }

        .dc-form label {
            display: block;
            margin-bottom: 7px;
            color: #20243d;
            font-size: 13px;
            font-weight: 700;
        }

        .dc-form textarea {
            width: 100%;
            box-sizing: border-box;
            min-height: 100px;
            padding: 12px;
            resize: vertical;
            border: 1px solid #dfe3eb;
            border-radius: 10px;
            font-family: inherit;
            font-size: 14px;
        }

        .dc-submit {
            width: 100%;
            margin-top: 10px;
            padding: 11px;
            border: none;
            border-radius: 10px;
            background: #5146e5;
            color: #ffffff;
            font-size: 14px;
            font-weight: 750;
            cursor: pointer;
        }


        /* LOGIN */

        .dc-login {
            margin-top: auto;
            padding-top: 18px;
            border-top: 1px solid #edf0f4;
            color: #5146e5;
            font-size: 14px;
            font-weight: 750;
            text-decoration: none;
        }


        /* EMPTY */

        .dc-empty {
            grid-column: 1 / -1;
            padding: 55px 30px;
            border: 1px dashed #d5d9e2;
            border-radius: 18px;
            background: #ffffff;
            text-align: center;
        }

        .dc-empty h2 {
            margin: 0 0 8px;
            color: #20243d;
        }

        .dc-empty p {
            margin: 0;
            color: #667085;
        }


        /* RESPONSIVE */

        @media (max-width: 900px) {

            .dc-grid {
                grid-template-columns: 1fr 1fr;
            }

        }


        @media (max-width: 650px) {

            .dc-page {
                padding: 35px 18px 60px;
            }

            .dc-header h1 {
                font-size: 36px;
            }

            .dc-filter {
                flex-direction: column;
                align-items: stretch;
            }

            .dc-filter select {
                width: 100%;
            }

            .dc-grid {
                grid-template-columns: 1fr;
            }

            .dc-card {
                min-height: auto;
            }

        }

    </style>

</head>


<body>

<%@ include file="header.jspf" %>


<main class="dc-page">


    <!-- HEADER -->

    <section class="dc-header">

        <p class="dc-eyebrow">
            DISCOVER
        </p>

        <h1>
            Find a collaboration
        </h1>

        <p>
            Browse open student opportunities and find students
            with the skills you need.
        </p>

    </section>


    <!-- FILTER -->

    <form
        class="dc-filter"
        action="${pageContext.request.contextPath}/discover"
        method="get">


        <select name="category">

            <option value="">
                All Categories
            </option>


            <%

                String selectedCategory =
                    (String) request.getAttribute("selectedCategory");


                String[] categories = {

                    "Video",
                    "Podcast",
                    "Photography",
                    "Design",
                    "Writing",
                    "Technology",
                    "Music",
                    "Social Media"

                };


                for (String category : categories) {

            %>


                <option
                    value="<%= category %>"
                    <%= category.equals(selectedCategory)
                        ? "selected"
                        : "" %>>

                    <%= category %>

                </option>


            <%

                }

            %>

        </select>


        <button type="submit">
            Filter
        </button>

    </form>


    <!-- COLLABORATION GRID -->

    <section class="dc-grid">


        <%

            List<Collaboration> list =
                (List<Collaboration>)
                request.getAttribute("collaborations");


            if (list != null && !list.isEmpty()) {


                for (Collaboration c : list) {

        %>


        <article class="dc-card">


            <!-- TOP -->

            <div class="dc-top">

                <span class="dc-category">
                    <%= c.getCategory() %>
                </span>

                <span class="votes">
                    <%= c.getVoteCount() %> votes
                </span>
            </div>


            <!-- TITLE -->

            <h2 class="dc-title">
                <%= c.getTitle() %>
            </h2>


            <!-- DESCRIPTION -->

            <p class="dc-description">
                <%= c.getDescription() %>
            </p>


            <!-- DETAILS -->

            <div class="dc-details">


                <div class="dc-detail">

                    <span class="dc-label">
                        Required Role
                    </span>

                    <span class="dc-value">
                        <%= c.getRequiredRole() %>
                    </span>

                </div>


                <div class="dc-detail">

                    <span class="dc-label">
                        Creator
                    </span>

                    <span class="dc-value">
                        <%= c.getCreatorName() %>
                    </span>

                </div>


                <div class="dc-detail">

                    <span class="dc-label">
                        Status
                    </span>

                    <span class="dc-value">
                        <%= c.getStatus() %>
                    </span>

                </div>


            </div>


            <!-- UPVOTE -->

            <div class="dc-action">

                <%

                    if (session.getAttribute("studentId") != null) {


                        if (c.isVoted()) {

                %>


                    <button
                        type="button"
                        class="dc-button voted"
                        disabled>

                        &#10003; Upvoted

                    </button>


                <%

                        } else {

                %>


                    <form
                        action="${pageContext.request.contextPath}/vote"
                        method="post">


                        <input
                            type="hidden"
                            name="collabId"
                            value="<%= c.getCollabId() %>">


                        <button
                            type="submit"
                            class="dc-button">

                            &#9650; Upvote

                        </button>


                    </form>


                <%

                        }

                    } else {

                %>


                    <a
                        href="${pageContext.request.contextPath}/"
                        class="dc-button">

                        &#9650; Login to Upvote

                    </a>


                <%

                    }

                %>

            </div>


            <!-- APPLY -->

            <%

                if (session.getAttribute("studentId") != null) {

            %>


                <details class="dc-apply">


                    <summary>
                        Apply to collaborate
                    </summary>


                    <form
                        action="${pageContext.request.contextPath}/apply"
                        method="post"
                        class="dc-form">


                        <input
                            type="hidden"
                            name="collabId"
                            value="<%= c.getCollabId() %>">


                        <label
                            for="pitch_<%= c.getCollabId() %>">

                            Short Pitch

                        </label>


                        <textarea
                            id="pitch_<%= c.getCollabId() %>"
                            name="pitchText"
                            required
                            placeholder="Tell the creator why you are a good fit..."></textarea>


                        <button
                            type="submit"
                            class="dc-submit">

                            Submit Application

                        </button>


                    </form>


                </details>


            <%

                } else {

            %>


                <a
                    href="${pageContext.request.contextPath}/"
                    class="dc-login">

                    Login to apply

                </a>


            <%

                }

            %>


        </article>


        <%

                }


            } else {

        %>


        <div class="dc-empty">

            <h2>
                No collaborations found
            </h2>

            <p>
                Try another category or check back later for new opportunities.
            </p>

        </div>


        <%

            }

        %>


    </section>


</main>


<%@ include file="footer.jspf" %>

</body>

</html>