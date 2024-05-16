package com.Se2.MusicPlatform.controller;
import com.Se2.MusicPlatform.model.*;
import com.Se2.MusicPlatform.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Controller
public class MusicController {

    @Autowired
    SongRepository songRepository;
    @Autowired
    SingerRepository singerRepository;

    @Autowired
    PlaylistRepository playlistRepository;


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

        return "screens/HomePage";
    }

    @GetMapping("/allSongs")
    @ResponseBody
    public List<Song> getAllSongs() {
        List<Song> songs = songRepository.findAll();
        return songs;
    }

    @RequestMapping(value = "/signup")
    public String getSignUpPage() {
        return "screens/SignUp";
    }
    @RequestMapping(value = "/signin")
    public String getSignInPage() {
        return "screens/SignIn";
    }
    @RequestMapping(value = "/song_detail/{id}")
    public String getSongDetailPage(@PathVariable(value = "id") Long id, Model model) {
        Song song = songRepository.getById(id);
        model.addAttribute("song", song);
        return "screens/SongDetailPage";
    }

    @RequestMapping(value = "/playlist")
    public String getPlaylistPage(Model model) {
        List<Playlist> playlists = playlistRepository.findAll();
        Playlist playlist = playlistRepository.getById(0L);
        List<Song> songs = songRepository.findAllByPlaylist_id(0L);
        model.addAttribute("playlists", playlists);
        model.addAttribute("playlist", playlist);
        model.addAttribute("songs", songs);
        return "screens/PlaylistPage";
    }

    @GetMapping("/allPlaylists")
    @ResponseBody
    public List<Playlist> getAllPlaylists() {
        // Assuming you have a service or data access layer to retrieve the playlists
        List<Playlist> playlists = playlistRepository.findAll();
        return playlists;
    }

    @RequestMapping(value = "/search")
    public String getSearchPage
            (@RequestParam(value = "song_name", required = false) String name,
             Model model) {
            if (name == ""){
                name = null;
            }
            List<Song> songs = songRepository.findBySongTitleContainingIgnoreCase(name);
            List<Singer> entities = singerRepository.findAll();
            List<Singer> firstFiveEntities = null;
            if (entities.size() >= 5) {
                firstFiveEntities = new ArrayList<>(entities.subList(0, 5));
            }
            model.addAttribute("songs", songs);
            model.addAttribute("song_name", name);
            model.addAttribute("popularSingers", firstFiveEntities);
            return "screens/SearchPage";
    }


}
