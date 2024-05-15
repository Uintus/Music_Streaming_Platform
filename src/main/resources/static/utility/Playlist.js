let addPlaylist = document.getElementById('addPlaylist');
let bg = document.getElementsByClassName("main")[0];
[0];
let popup = document.getElementsByClassName("popup-container")[0];
[0];

addPlaylist.addEventListener("click", () => {
  popup.style.display = "flex";
});

document.getElementById("closeButton").addEventListener("click", function () {
  // Ẩn thẻ popup-container khi nhấn nút "X"
  popup.style.display = "none";
});
