package kr.co.promptech.dcat.service;

import kr.co.promptech.dcat.repository.PlatformRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TokenService {
    public static final String TOKEN_PREFIX = "Bearer ";
    public static final String HEADER_STRING = "Authorization";

    @Autowired
    private PlatformRepository platformRepository;

    public boolean isValid(String token) {
        if (token != null && token.startsWith(TOKEN_PREFIX)) {
            token = token.replace(TOKEN_PREFIX, "");

            if (platformRepository.findByApiKey(token) != null) {
                return true;
            }
        }

        return false;
    }
}
