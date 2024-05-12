package com.Se2.MusicPlatform.controller;
import com.Se2.MusicPlatform.model.Song;
import com.Se2.MusicPlatform.repository.SongRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class MusicController {

    @Autowired
    SongRepository songRepository;
    @RequestMapping(value = "/navigate")
    public String getNavigationBar(Model model) {
        List<Song> songs = songRepository.findAll();
        model.addAttribute("songs", songs);
        return "components/NavigateBar";
    }
}
