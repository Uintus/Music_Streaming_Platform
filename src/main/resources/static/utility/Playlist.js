function usePopup() {
  $("#popup-container").css("display", "flex");
};
function hidePopup() {
  $("#popup-container").css("display", "none");
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
                location.reload();
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
      fetch(`/song/delete/${songId}`, {
        method: 'GET', // Change the request method to GET
      })
        .then(response => {
          if (response.ok) {
            location.reload(); // Refresh the page after successful deletion
          } else {
            console.error('Error deleting song');
          }
        })
        .catch(error => {
          console.error('Error deleting song:', error);
        });
    }