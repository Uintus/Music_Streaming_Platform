package com.Se2.MusicPlatform.controller;
import com.Se2.MusicPlatform.model.*;
import com.Se2.MusicPlatform.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Controller
public class MusicController {

    @Autowired
    SongRepository songRepository;
    @Autowired
    SingerRepository singerRepository;

    @RequestMapping(value = "/")
    public String homePage(){
        return "redirect:/home";
    }
    @RequestMapping(value = "/home")
    public String getNavigationBar(Model model) {
        List<Song> songs = songRepository.findAll();
        List<Singer> singers = singerRepository.findAll();
        Collections.shuffle(songs);
        List<Song> randomSongs = songs.subList(0, Math.min(songs.size(), 5));
        Collections.shuffle(singers);
        List<Singer> randomSingers = singers.subList(0, Math.min(singers.size(), 5));

        model.addAttribute("songs", randomSongs);
        model.addAttribute("singers", randomSingers);
        if (!randomSongs.isEmpty()) {
            Song firstSong = randomSongs.get(0);
            model.addAttribute("firstSong", firstSong);
        }
        return "screens/HomePage";
    }

    @GetMapping("/playSong/{songId}")
    public String getPlaySongSection(@PathVariable("songId") Long songId, Model model) {
        Optional<Song> song = songRepository.findById(songId);
        model.addAttribute("song", song);
        return "fragments/PlaySong :: play-song(song=${song})"; // Note the change to dynamically pass the song object
    }

    @RequestMapping(value = "/signup")
    public String getSignUpPage() {
        return "screens/SignUp";
    }
    @RequestMapping(value = "/signin")
    public String getSignInPage() {
        return "screens/SignIn";
    }
    @RequestMapping(value = "/lyrics")
    public String getSongDetailPage() {
        return "screens/SongDetailPage";
    }

    @RequestMapping(value = "/playlist")
    public String getPlaylistPage() {
        return "screens/PlaylistPage";
    }

    @RequestMapping(value = "/search")
    public String getSearchPage() {
        return "screens/SearchPage";
    }


}
