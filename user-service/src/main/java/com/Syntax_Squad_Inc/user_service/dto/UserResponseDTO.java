package com.Syntax_Squad_Inc.user_service.dto;

import com.Syntax_Squad_Inc.user_service.dto.UserResponseDTO;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.time.LocalDateTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserResponseDTO {
    private Long id;
    private String username;
    private String email;
    private String password;
    private String role;
    private LocalDateTime createdAt; // or LocalDateTime depending on your entity
    private LocalDateTime updatedAt;
}
