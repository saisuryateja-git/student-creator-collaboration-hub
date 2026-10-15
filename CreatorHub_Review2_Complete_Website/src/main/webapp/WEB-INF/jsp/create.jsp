<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create | CreatorHub</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<%@ include file="header.jspf" %>

<main class="container narrow page">

    <div class="page-title">
        <p class="eyebrow">LISTING MODULE</p>
        <h1>Create a collaboration</h1>
        <p>
            Post an opportunity and find students with the skills you need.
        </p>
    </div>

    <form action="${pageContext.request.contextPath}/create"
          method="post"
          class="panel form">

        <label for="title">Collaboration Title</label>

        <input
            id="title"
            name="title"
            type="text"
            placeholder="Example: Campus Short Film"
            required
        >


        <label for="category">Category</label>

        <select id="category" name="category" required>
            <option value="">Select a category</option>
            <option value="Video">Video</option>
            <option value="Podcast">Podcast</option>
            <option value="Photography">Photography</option>
            <option value="Design">Design</option>
            <option value="Writing">Writing</option>
            <option value="Technology">Technology</option>
            <option value="Music">Music</option>
            <option value="Social Media">Social Media</option>
        </select>


        <label for="description">Description</label>

        <textarea
            id="description"
            name="description"
            rows="6"
            placeholder="Describe your collaboration idea..."
            required
        ></textarea>


        <label for="requiredRole">Role Required</label>

        <select id="requiredRole"
                name="requiredRole"
                required
                disabled>

            <option value="">
                Select a category first
            </option>

        </select>


        <button class="btn primary" type="submit">
            Publish Collaboration
        </button>

    </form>

</main>

<%@ include file="footer.jspf" %>


<script>
    const categorySelect = document.getElementById("category");
    const roleSelect = document.getElementById("requiredRole");

    const rolesByCategory = {

        "Video": [
            "Video Editor",
            "Cinematographer",
            "Director",
            "Script Writer",
            "Actor"
        ],

        "Podcast": [
            "Podcast Editor",
            "Podcast Host",
            "Researcher",
            "Sound Editor",
            "Script Writer"
        ],

        "Photography": [
            "Photographer",
            "Photo Editor",
            "Lightroom Editor",
            "Creative Director"
        ],

        "Design": [
            "UI Designer",
            "UX Designer",
            "Graphic Designer",
            "Illustrator",
            "Motion Designer"
        ],

        "Writing": [
            "Content Writer",
            "Copywriter",
            "Script Writer",
            "Editor",
            "Research Writer"
        ],

        "Technology": [
            "Frontend Developer",
            "Backend Developer",
            "Full Stack Developer",
            "AI/ML Developer",
            "UI/UX Designer",
            "Tester"
        ],

        "Music": [
            "Music Producer",
            "Singer",
            "Composer",
            "Sound Engineer",
            "Music Editor"
        ],

        "Social Media": [
            "Social Media Manager",
            "Content Creator",
            "Video Editor",
            "Copywriter",
            "Social Media Designer"
        ]
    };


    categorySelect.addEventListener("change", function () {

        const category = this.value;

        roleSelect.innerHTML = "";

        if (!category || !rolesByCategory[category]) {

            roleSelect.disabled = true;

            const option = document.createElement("option");
            option.value = "";
            option.textContent = "Select a category first";

            roleSelect.appendChild(option);

            return;
        }

        roleSelect.disabled = false;

        const defaultOption = document.createElement("option");
        defaultOption.value = "";
        defaultOption.textContent = "Select a role";

        roleSelect.appendChild(defaultOption);


        rolesByCategory[category].forEach(function(role) {

            const option = document.createElement("option");

            option.value = role;
            option.textContent = role;

            roleSelect.appendChild(option);
        });

    });
</script>

</body>
</html>