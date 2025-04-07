@Data
@Builder
public class UserResponseDTO {
    private Long id;
    private String email;
    private String username;
    private String role;
    private LocalDateTime createdAt;
}
