package com.Se2.MusicPlatform.controller;
import com.Se2.MusicPlatform.model.*;
import com.Se2.MusicPlatform.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

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
        List<Playlist> playlists = playlistRepository.findAll();
        Collections.shuffle(songs);
        List<Song> randomSongs = songs.subList(0, Math.min(songs.size(), 5));
        Collections.shuffle(singers);
        List<Singer> randomSingers = singers.subList(0, Math.min(singers.size(), 5));

        model.addAttribute("playlists", playlists);
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
//        System.out.println(song.getLyric());
        String[] lines = song.getLyric().split("/");
        StringBuilder result = new StringBuilder();
        for (String line : lines) {
            result.append("<p class=\"lyric-line\">").append(line.trim()).append("</p>");
        }
        model.addAttribute("song", song);
        model.addAttribute("lyric", result);
        return "screens/SongDetailPage";
    }

    @RequestMapping(value = "/playlist/{id}")
    public String getPlaylistPage(@PathVariable(value = "id") Long id, Model model) {
        List<Playlist> playlists = playlistRepository.findAll();

        // Retrieve the first playlist from the list
        Playlist playlist = null;
        if (!playlists.isEmpty() && id == -1) {
            playlist = playlists.get(0);
        } else if (!playlists.isEmpty()) {
            playlist = playlistRepository.getById(id);
        }

        // Retrieve the songs for the first playlist
        List<Song> songs = new ArrayList<>();
        if (playlist != null) {
            songs = songRepository.findAllByPlaylist_id(playlist.getId());
        }

        model.addAttribute("playlists", playlists);
        model.addAttribute("playlist", playlist);
        model.addAttribute("songs", songs);
        return "screens/PlaylistPage";
    }

    @RequestMapping(value = "/playlist/all")
    public ResponseEntity<List<Playlist>> getAllPlaylists() {
        List<Playlist> playlists = playlistRepository.findAll();
        return ResponseEntity.ok(playlists);
    }

    @RequestMapping(value = "/song/update/{id}", method = RequestMethod.GET)
    public ResponseEntity<String> deleteSong(@PathVariable("id") Long id,
                                             @RequestParam("playlistId") Long playlistId) {
        Song song = songRepository.findById(id).orElse(null);
        if (song != null && playlistId == -1) {
            song.setPlaylist(null);
            songRepository.save(song);
            return ResponseEntity.ok("Song deleted successfully");
        } else if (song != null) {
            song.setPlaylist(playlistRepository.getById(playlistId));
            songRepository.save(song);
            return ResponseEntity.ok("Song updated successfully");
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @RequestMapping(value = "/playlist/save", method = RequestMethod.GET)
    public ResponseEntity<String> savePlaylist(@RequestParam("nameInput") String nameInput,
                                               @RequestParam("imageInput") String imageInput) {
        Playlist playlist = new Playlist();
        playlist.setName(nameInput);
        playlist.setImage(imageInput);

        playlistRepository.save(playlist);
        return ResponseEntity.ok("Playlist created successfully");
    }

    @RequestMapping(value = "/playlist/delete/{playlistId}", method = RequestMethod.GET)
    public ResponseEntity<String> deletePlaylist(@PathVariable("playlistId") Long playlistId) {
        Playlist playlist = playlistRepository.findById(playlistId).orElse(null);
        if (playlist != null) {
            playlistRepository.delete(playlist);
            return ResponseEntity.ok("Playlist deleted successfully");
        } else {
            return ResponseEntity.notFound().build();
        }
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
