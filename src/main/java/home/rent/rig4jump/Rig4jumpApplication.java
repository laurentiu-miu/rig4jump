package home.rent.rig4jump;

import home.rent.rig4jump.repository.UsersRepository;
import org.springdoc.core.GroupedOpenApi;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class Rig4jumpApplication {

	public static void main(String[] args) {
		SpringApplication.run(Rig4jumpApplication.class, args);
	}

	@Bean
	public GroupedOpenApi actuatorApi() {
		return GroupedOpenApi.builder().group("Actuator")
				.pathsToExclude("/profile/*", "/profile")
				.build();

	}

}
