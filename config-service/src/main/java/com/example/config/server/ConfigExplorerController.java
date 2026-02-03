// API 1 : Lister les projets
// API 2 : retourner la configuration par service

package com.example.config.server;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/admin/config")
@RequiredArgsConstructor
public class ConfigExplorerController {

    private final ConfigExplorerService service;
    private final ProjectsScannerService projectsScannerService;


    // API1
    @GetMapping("/projects")
    public ProjectsListResponse listProjects() {
        return projectsScannerService.listProjects();
    }

    // API2
    // GET /api/admin/config/projects/{projectName}/split?env=dev&label=main
    @GetMapping("/projects/{projectName}/split")
    public ProjectConfigSplitResponse getProjectConfigSplit(
            @PathVariable String projectName,
            @RequestParam String env,
            @RequestParam(required = false) String label
    ) {
        return service.getProjectConfigSplit(projectName, env, label);
    }
}
