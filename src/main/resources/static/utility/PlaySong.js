"use strict";

const songs = [
  { id: 0, src: "/audio/Love_Story.mp3" },
  { id: 0, src: "/audio/Cruel_Summer.mp3" },
//  { id: 0, src: "" },

  { id: 1, src: "/audio/Solo.mp3" },
  { id: 1, src: "/audio/Spot.mp3" },
  { id: 1, src: "/audio/You_Me.mp3" },

  { id: 2, src: "/audio/Seven.mp3" },
//  { id: 2, src: "" },
//  { id: 2, src: "" },
//
//  { id: 3, src: "" },
//  { id: 3, src: "" },
//  { id: 3, src: "" },
//
//  { id: 4, src: "" },
//  { id: 4, src: "" },
//  { id: 4, src: "" },
//
//  { id: 5, src: "" },
//  { id: 5, src: "" },
//  { id: 5, src: "" },
];

const getSongById = (id) => {
  for (var i = 0; i < songs.length; i++) {
    if (songs[i].id === id) {
      return songs[i].src;
    }
  }
  return null; // Trả về null nếu không tìm thấy id trong mảng songs
};

/** GET SONG FROM DATA 15 SONGS BY ID HERE!!!*/
let songId = 1;
let music = new Audio(getSongById(songId));

// play/pause
let masterPlay = document.getElementById("masterPlay");
let wave = document.getElementsByClassName("wave")[0];

masterPlay.addEventListener("click", () => {
  if (!songId){
    music.pause();
    masterPlay.src = "/img/play.png";
    wave.classList.remove("active2");
  }
  else if (music.paused || music.currentTime <= 0 ) {
    music.play();
    masterPlay.src = "/img/pause.png";
    wave.classList.add("active2");
  }else{
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

music.addEventListener("timeupdate", () => {
  //time
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
});

//skip song
let back = document.getElementsByClassName("left")[0];
let next = document.getElementById("next");

back.addEventListener("click", () => {
  if (songId === 0) {
    songId = songId;
  } else {
    songId = songId - 1;
  }

  music.pause();
  music = new Audio(getSongById(songId));
  music.play();
  music.addEventListener("timeupdate", () => {
    //time
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
  });
});

next.addEventListener("click", () => {
  if (songId === 2) {
    songId = songId;
  } else {
    songId = songId + 1;
  }

  music.pause();
  music = new Audio(getSongById(songId));
  music.play();
  music.addEventListener("timeupdate", () => {
    //time
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
  });
});
