package com.example.config.server;

import lombok.*;

import java.util.List;

@Data @NoArgsConstructor @AllArgsConstructor
public class ProjectsListResponse {
    private int total;
    private List<String> projects;
}
