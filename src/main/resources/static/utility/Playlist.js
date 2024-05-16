function usePopup() {
  $("#popup-container").css("display", "flex");
};
function hidePopup() {
  $("#popup-container").css("display", "none");
};
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