package service;
import dto.UserRequestDTO;
import jakarta.validation.Valid;
import org.springframework.stereotype.Service;
import java.util.List;
import entity.User;
import lombok.RequiredArgsConstructor;
import repository.UserRepository;


@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;

    public UserResponseDTO createUser(@Valid UserRequestDTO request) {
        User user = User.builder()
                .email(request.getEmail())
                .username(request.getUsername())
                .password(request.getPassword()) // hash later in JWT phase
                .role("USER")
                .build();

        userRepository.save(user);
        return toResponseDTO(user);
    }

    public UserResponseDTO getUserById(Long id) {
        User user = userRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("User not found"));
        return toResponseDTO(user);
    }

    public List<UserResponseDTO> getAllUsers() {
        return userRepository.findAll()
                .stream()
                .map(this::toResponseDTO)
                .toList();
    }

    public UserResponseDTO updateUser(Long id, UserRequestDTO request) {
        User user = userRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("User not found"));

        user.setUsername(request.getUsername());
        user.setEmail(request.getEmail());
        user.setPassword(request.getPassword());

        userRepository.save(user);
        return toResponseDTO(user);
    }

    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }

    private UserResponseDTO toResponseDTO(User user) {
        return UserResponseDTO.builder()
                .id(user.getId())
                .email(user.getEmail())
                .username(user.getUsername())
                .role(user.getRole())
                .createdAt(user.getCreatedAt())
                .build();
    }
}
