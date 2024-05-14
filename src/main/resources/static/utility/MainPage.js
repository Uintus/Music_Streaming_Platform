document.addEventListener("DOMContentLoaded", function () {

  var contentElement = document.getElementById("content");


//     Sử dụng fetch() để tải nội dung từ tệp HTML riêng biệt
    fetch('/home')
    .then(response => response.text())
    .then(data => {
        contentElement.innerHTML = data; // Gán nội dung vào phần tử gốc
    });


  let home = document.getElementsByClassName("home-navi")[0];
  let playlist = document.getElementsByClassName("playlist-navi")[0]
  let lyrics = document.getElementById("playlist-nav")

//   home.addEventListener("click", () => {});


  home.addEventListener("click", function (event) {
    event.preventDefault();

        // Sử dụng fetch() để tải nội dung từ tệp HTML riêng biệt
        fetch('/home')
            .then(response => response.text())
            .then(data => {
                contentElement.innerHTML = data; // Gán nội dung vào phần tử gốc
            });
  });

  playlist.addEventListener("click", function (event) {
    event.preventDefault();

        // Sử dụng fetch() để tải nội dung từ tệp HTML riêng biệt
        fetch('/playlist')
            .then(response => response.text())
            .then(data => {
                contentElement.innerHTML = data; // Gán nội dung vào phần tử gốc
            });
  });

  lyrics.addEventListener("click", function (event) {
      event.preventDefault();

          // Sử dụng fetch() để tải nội dung từ tệp HTML riêng biệt
          fetch('/lyrics')
              .then(response => response.text())
              .then(data => {
                  contentElement.innerHTML = data; // Gán nội dung vào phần tử gốc
              });
    });
});
