import requests


USERNAMES = ("hadi", "raza", "muhammad")
GITHUB_USER_URL = "https://api.github.com/users/{}"


def main():
    for username in USERNAMES:
        try:
            response = requests.get(
                GITHUB_USER_URL.format(username),
                timeout=10,
            )
        except requests.RequestException as error:
            print(f"Error fetching {username}: {error}")
            continue

        if response.status_code == 200:
            user = response.json()
            print(f"Login: {user['login']}, Public repositories: {user['public_repos']}")
        else:
            print(
                f"Error fetching {username}: "
                f"HTTP status {response.status_code}"
            )


if __name__ == "__main__":
    main()
