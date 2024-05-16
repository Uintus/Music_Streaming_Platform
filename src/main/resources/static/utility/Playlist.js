var contentElement = document.getElementById("content");

function usePopup() {
    $("#popup-container").css("display", "flex");
};

function usePopupChoose() {
    $("#popup-container-choose").css("display", "flex");
};

function hidePopup() {
    $("#popup-container").css("display", "none");
    $("#popup-container-choose").css("display", "none");
};
function updatePlaylistPage() {
    fetch("/playlist")
        .then((response) => response.text())
        .then((data) => {
            contentElement.innerHTML = data;
        });
};
function savePlaylist() {
    // Get the input values
    const nameInput = $("#nameInput").val();
    const imageInput = $("#imageInput").val();
    // Call the function only if both inputs are not null
    if (nameInput && imageInput) {
        fetch(`/playlist/save?nameInput=${nameInput}&imageInput=${imageInput}`, {
                method: 'GET',
            })
            .then(response => {
                if (response.ok) {
                updatePlaylistPage();
                } else {
                    console.error("Error creating playlist");
                }
            }).catch(error => {
                console.error("Error creating playlist", error);
            });
    }
    // Reset the input values
    $("#nameInput").val("");
    $("#imageInput").val("");
    // Hide the popup
    hidePopup();
}

function deleteSong(songId) {
    fetch(`/song/update/${songId}?playlistId=-1`, {
            method: 'GET',
        })
        .then(response => {
            if (response.ok) {
                const songElement = document.querySelector(`[data-song-id="${songId}"]`);
                if (songElement) {
                    songElement.remove();
                }
            } else {
                console.error('Error deleting song');
            }
        })
        .catch(error => {
            console.error('Error deleting song:', error);
        });
}

function addSong(playlistId) {
    if ($("#play-image").attr("alt") != "") {
        let songId = parseInt($("#play-image").attr("alt"));
        fetch(`/song/update/${songId}?playlistId=${playlistId}`, {
                method: 'GET',
            })
            .then(response => {
                if (response.ok) {} else {
                    console.error('Error adding song to playlist');
                }
            })
            .catch(error => {
                console.error('Error adding song to playlist:', error);
            });
    }
    hidePopup();
}

function deletePlaylist(playlistId) {
    fetch(`/playlist/delete/${playlistId}`, {
            method: 'GET', // Change the request method to GET
        })
        .then(response => {
            if (response.ok) {
                // Remove the deleted playlist element from the DOM
                const playlistElement = document.querySelector(`[data-playlist-id="${playlistId}"]`);
                if (playlistElement) {
                    playlistElement.remove();
                }
            } else {
                console.error('Error deleting playlist');
            }
        })
        .catch(error => {
            console.error('Error deleting playlist:', error);
        });
}