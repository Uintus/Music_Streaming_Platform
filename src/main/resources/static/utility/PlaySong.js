

const songs = [
  { id: 0, src: "/audio/Chungtakhongthuocvenhau.mp3" },
  { id: 1, src: "/audio/Love_Story.mp3" },
  { id: 2, src: "/audio/You_Me.mp3" },
  { id: 3, src: "/audio/3D.mp3" },
  { id: 4, src: "/audio/GODS.mp3" },
  { id: 5, src: "/audio/Cruel_Summer.mp3" },
  { id: 6, src: "/audio/Blank_Space.mp3" },
  { id: 7, src: "/audio/Still_with_you.mp3" },
  { id: 8, src: "/audio/Seven.mp3" },
  { id: 9, src: "/audio/Solo.mp3" },
  { id: 10, src: "/audio/Spot.mp3" },
  { id: 11, src: "/audio/Stitches.mp3" },
  { id: 12, src: "/audio/meback.mp3" },
  { id: 13, src: "/audio/Treat_you_better.mp3" },
  { id: 14, src: "/audio/Attention.mp3" },
  { id: 15, src: "/audio/Dangerously.mp3" },
  { id: 16, src: "/audio/Howlong.mp3" },

];

const getSongById = (id) => {
  for (var i = 0; i < songs.length; i++) {
    if (songs[i].id === id) {
      return songs[i].src;
    }
  }
  return null; // Trả về null nếu không tìm thấy bài hát với id tương ứng
};

/** GET SONG FROM DATA 15 SONGS */
let viewId = $("#play-image").attr("alt");

let songId;

let music = new Audio(getSongById(songId));


// play/pause
let masterPlay = document.getElementById("masterPlay");
let wave = document.getElementsByClassName("wave")[0];
//skip song
let back = document.getElementsByClassName("left")[0];
let next = document.getElementById("next");

let button = document.getElementsByClassName("buttons")[0]
button.style = "";

//check for current song
setInterval(function() {
  currValue = $("#play-image").attr("alt");

  if (viewId != currValue) {
    music.pause();
    viewId = currValue;
    songId = parseInt(viewId);
    music = new Audio(getSongById(songId));
    music.addEventListener("timeupdate", updateTime);

    masterPlay.src = "/img/play.png";
    wave.classList.remove("active2");
  }
}, 1);

masterPlay.addEventListener("click", () => {
if (viewId != $("#play-image").attr("alt")) {
viewId = $("#play-image").attr("alt");
songId = parseInt(viewId);

music = new Audio(getSongById(songId));
music.addEventListener("timeupdate", updateTime);
}

  if (!songId) {
    // button.disabled = true;
    music.pause();
    masterPlay.src = "/img/play.png";
    wave.classList.remove("active2");
  } else if (music.paused || music.currentTime <= 0) {
    button.disabled = false;
    music.play();
    masterPlay.src = "/img/pause.png";
    wave.classList.add("active2");
  } else {
    button.disabled = false;
    music.pause();
    masterPlay.src = "/img/play.png";
    wave.classList.remove("active2");
  }
});

let currentStart = document.getElementById("currentStart");
let currentEnd = document.getElementById("currentEnd");
let seek = document.getElementById("seek");
let bar2 = document.getElementById("bar2");
let dot = document.getElementsByClassName("dot")[0];

function updateTime() {
  let music_curr = music.currentTime;

  let music_dur = music.duration;

  let min = Math.floor(music_dur / 60);
  let sec = Math.floor(music_dur % 60);
  if (sec < 10) {
    sec = `0${sec}`;
  }
  currentEnd.innerText = `${min}:${sec}`;

  let min1 = Math.floor(music_curr / 60);
  let sec1 = Math.floor(music_curr % 60);
  if (sec1 < 10) {
    sec1 = `0${sec1}`;
  }

  currentStart.innerText = `${min1}:${sec1}`;

  // bar
  let progressbar = parseInt((music.currentTime / music.duration) * 100);
  seek.value = progressbar;
  let seekbar = seek.value;

  // Giá trị trung gian
  let currentSeekbar = parseInt(bar2.style.width) || 0;

  // Tính toán khoảng cách di chuyển
  let distance = seekbar - currentSeekbar;
  let step = Math.abs(distance) / 10; // Chia khoảng cách thành 10 bước

  // Xác định hướng di chuyển
  let direction = distance > 0 ? 1 : -1;

  // Cập nhật vị trí và độ dài
  function updateSeekbar() {
    currentSeekbar += step * direction;

    if (
      (direction === 1 && currentSeekbar >= seekbar) ||
      (direction === -1 && currentSeekbar <= seekbar)
    ) {
      currentSeekbar = seekbar;
    } else {
      requestAnimationFrame(updateSeekbar);
    }

    bar2.style.width = `${currentSeekbar}%`;
    dot.style.left = `${currentSeekbar}%`;
  }

  updateSeekbar();

  //skip bar
  seek.addEventListener("change", () => {
    music.currentTime = (seek.value * music.duration) / 100;
  });

  music.addEventListener("ended", () => {
    masterPlay.src = "/img/pause.png";
    masterPlay.src = "/img/play.png";
    wave.classList.remove("active2");
  });
}
// Show time
music.addEventListener("timeupdate", updateTime);

back.addEventListener("click", () => {
if (songId === 0) {
    songId = 0;
  } else {
    songId = songId - 1;
  }
  changeSong(songId);
  viewId = $("#play-image").attr("alt");

  music.pause();
  music = new Audio(getSongById(songId));
music.addEventListener("timeupdate", updateTime);
});

next.addEventListener("click", () => {
if (songId === 16) {
    songId = songId;
  } else {
    songId = songId + 1;
  }

  changeSong(songId);
  viewId = $("#play-image").attr("alt");


  music.pause();
  music = new Audio(getSongById(songId));
music.addEventListener("timeupdate", updateTime);
});

    function getAllSongs(callback) {
        $.ajax({
            url: "/allSongs",
            type: "GET",
            dataType: "json",
            success: function(response) {
                console.log("AJAX request successful. Response:", response);
                callback(response); // Invoke the callback function with the response data
            },
            error: function(xhr, status, error) {
                console.log("AJAX request error:", error); // Log any errors that occur during the AJAX request
            }
        });
    }

    function changeSong(songId) {
        getAllSongs(function(allSongs) {
            // Use the allSongs data here
            var song = allSongs[songId];
            $("#play-name").text(song.song_title);
            $("#play-singer").text(song.singer.name);
            $("#play-image").attr("src", song.image);
            $("#play-image").attr("alt", songId);
        });
    }

