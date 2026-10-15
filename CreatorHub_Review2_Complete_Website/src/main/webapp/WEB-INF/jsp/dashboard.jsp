<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="com.creatorhub.model.Collaboration" %>
<%@ page import="com.creatorhub.model.Application" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Dashboard | CreatorHub</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">

</head>


<body>

<%@ include file="header.jspf" %>


<main class="container page dashboard-page">


    <!-- ============================= -->
    <!-- DASHBOARD HEADER -->
    <!-- ============================= -->

    <section class="page-title dashboard-title">

        <p class="eyebrow">
            CREATOR DASHBOARD
        </p>

        <h1>
            Your Creator Dashboard
        </h1>

        <p>
            Track your collaborations, see community support,
            and review students interested in your projects.
        </p>

    </section>


    <!-- ============================= -->
    <!-- DASHBOARD GRID -->
    <!-- ============================= -->

    <div class="dashboard-layout">


        <!-- ============================= -->
        <!-- MY COLLABORATIONS -->
        <!-- ============================= -->

        <section class="dashboard-section">

            <div class="section-heading">

                <div>

                    <p class="eyebrow">
                        YOUR PROJECTS
                    </p>

                    <h2>
                        My Collaborations
                    </h2>

                </div>


                <a
                    href="${pageContext.request.contextPath}/create"
                    class="btn primary">

                    + New Collaboration

                </a>

            </div>


            <%

                List<Collaboration> collaborations =
                    (List<Collaboration>)
                    request.getAttribute("collaborations");


                if (collaborations != null &&
                    !collaborations.isEmpty()) {


                    for (Collaboration collaboration : collaborations) {

            %>


            <!-- COLLABORATION CARD -->

            <article class="dashboard-collab-card">


                <!-- CARD HEADER -->

                <div class="dashboard-card-top">

                    <span class="tag">
                        <%= collaboration.getCategory() %>
                    </span>


                    <span class="vote-count">
                        ▲ <%= collaboration.getVoteCount() %> votes
                    </span>

                </div>


                <!-- TITLE -->

                <h3>
                    <%= collaboration.getTitle() %>
                </h3>


                <!-- DESCRIPTION -->

                <p class="dashboard-description">
                    <%= collaboration.getDescription() %>
                </p>


                <!-- PROJECT INFORMATION -->

                <div class="dashboard-details">


                    <div class="dashboard-detail">

                        <span>
                            Role Needed
                        </span>

                        <strong>
                            <%= collaboration.getRequiredRole() %>
                        </strong>

                    </div>


                    <div class="dashboard-detail">

                        <span>
                            Status
                        </span>

                        <strong>
                            <%= collaboration.getStatus() %>
                        </strong>

                    </div>


                </div>


                <!-- STATISTICS -->

                <div class="dashboard-stats">


                    <div class="stat">

                        <strong>
                            <%= collaboration.getVoteCount() %>
                        </strong>

                        <span>
                            Community Votes
                        </span>

                    </div>


                    <div class="stat">

                        <strong>
                            <%= collaboration.getApplicationCount() %>
                        </strong>

                        <span>
                            Applications
                        </span>

                    </div>


                    <div class="stat">

                        <strong>
                            <%= collaboration.getStatus() %>
                        </strong>

                        <span>
                            Listing
                        </span>

                    </div>


                </div>


            </article>


            <%

                    }

                } else {

            %>


            <!-- EMPTY STATE -->

            <div class="dashboard-empty">

                <div class="empty-icon">
                    +
                </div>


                <h3>
                    No collaborations yet
                </h3>


                <p>
                    You haven't created a collaboration yet.
                    Start a project and find students who can help
                    bring your idea to life.
                </p>


                <a
                    href="${pageContext.request.contextPath}/create"
                    class="btn primary">

                    Create Your First Collaboration

                </a>

            </div>


            <%

                }

            %>


        </section>



        <!-- ============================= -->
        <!-- APPLICATIONS -->
        <!-- ============================= -->

        <section class="dashboard-section applicants-section">


            <div class="section-heading">

                <div>

                    <p class="eyebrow">
                        STUDENT INTEREST
                    </p>

                    <h2>
                        Applications
                    </h2>

                </div>

            </div>


            <%

                List<Application> applications =
                    (List<Application>)
                    request.getAttribute("applications");


                if (applications != null &&
                    !applications.isEmpty()) {

            %>


            <div class="applications-list">


                <%

                    for (Application app : applications) {

                %>


                <!-- APPLICATION CARD -->

                <article class="application-card">


                    <!-- APPLICANT -->

                    <div class="application-header">

                        <div>

                            <span class="application-label">
                                STUDENT APPLICANT
                            </span>

                            <h3>
                                <%= app.getApplicantName() %>
                            </h3>

                        </div>


                        <span class="application-status">
                            New
                        </span>

                    </div>


                    <!-- COLLABORATION REFERENCE -->

                    <div class="application-project">

                        <span>
                            Applied to Collaboration
                        </span>

                        <strong>
                            #<%= app.getCollabId() %>
                        </strong>

                    </div>


                    <!-- PITCH -->

                    <div class="pitch-box">

                        <span class="application-label">
                            SHORT PITCH
                        </span>


                        <p>
                            <%= app.getPitchText() %>
                        </p>

                    </div>


                    <!-- APPLICATION DETAILS -->

                    <div class="application-footer">


                        <span>
                            Application
                            <strong>
                                #<%= app.getApplicationId() %>
                            </strong>
                        </span>


                        <span>
                            Student ID
                            <strong>
                                #<%= app.getApplicantId() %>
                            </strong>
                        </span>


                    </div>


                </article>


                <%

                    }

                %>


            </div>


            <%

                } else {

            %>


            <!-- NO APPLICATIONS -->

            <div class="dashboard-empty application-empty">


                <div class="empty-icon">
                    ✓
                </div>


                <h3>
                    No applications yet
                </h3>


                <p>
                    When students apply to your collaborations,
                    their pitches will appear here.
                </p>


                <a
                    href="${pageContext.request.contextPath}/discover"
                    class="text-link">

                    Explore the CreatorHub community →

                </a>


            </div>


            <%

                }

            %>


        </section>


    </div>



    <!-- ============================= -->
    <!-- DASHBOARD INFORMATION -->
    <!-- ============================= -->

    <section class="dashboard-info">


        <div class="dashboard-info-main">

            <p class="eyebrow">
                HOW CREATORHUB WORKS
            </p>


            <h2>
                Create. Discover. Collaborate.
            </h2>


            <p>
                Publish an idea, receive community support through
                upvotes, and review student applications to find
                the right collaborator.
            </p>

        </div>


        <div class="dashboard-info-items">


            <div class="dashboard-info-item">

                <strong>
                    01
                </strong>

                <span>
                    Post a collaboration opportunity.
                </span>

            </div>


            <div class="dashboard-info-item">

                <strong>
                    02
                </strong>

                <span>
                    Let the community support promising ideas.
                </span>

            </div>


            <div class="dashboard-info-item">

                <strong>
                    03
                </strong>

                <span>
                    Review applications and build your team.
                </span>

            </div>


        </div>


    </section>


</main>


<%@ include file="footer.jspf" %>


</body>

</html>