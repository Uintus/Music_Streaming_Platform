//let addPlaylist = document.getElementById('addPlaylist');
//let bg = document.getElementsByClassName("main")[0];
//[0];
//let popup = document.getElementsByClassName("popup-container")[0];
//[0];
//
//addPlaylist.addEventListener("click", () => {
//  popup.style.display = "flex";
//});
//
//document.getElementById("closeButton").addEventListener("click", function () {
//  // Ẩn thẻ popup-container khi nhấn nút "X"
//  popup.style.display = "none";
//});

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