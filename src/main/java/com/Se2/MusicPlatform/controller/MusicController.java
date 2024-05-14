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


    @RequestMapping(value = "/main")
    public String getMainPage(Model model){
        return "screens/MainPage";
    }


    @RequestMapping(value = "/")
    public String homePage(){
        return "redirect:/main";
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
        Optional<Song> songOptional = songRepository.findById(songId);
        if (songOptional.isPresent()) {
            Song song = songOptional.get();
            model.addAttribute("song", song);
        } else {
            // Handle the case where the song with the given id is not found
            return "error";
        }
        return "fragments/PlaySong :: play-song";
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
