  var contentElement = document.getElementById("content");
    let input = document.getElementById("searchInput");
    input.addEventListener("input", function() {
        console.log("input changed");
    });


    function navigateSong(songId) {
        fetch("/song_detail/" + songId)
            .then((response) => response.text())
            .then((data) => {
                contentElement.innerHTML = data;
            });
    }





