# Server Performance Stats

## **Objective**

Write a script to analyse basic server performance stats.

## **Requirments**

    You are required to write a script server-stats.sh that can analyse basic server performance stats. You should be able to run the script on any Linux server and it should give you the following stats:

        - Total CPU usage
        - Total memory usage (Free vs Used including percentage)
        - Total disk usage (Free vs Used including percentage)
        - Top 5 processes by CPU usage
        - Top 5 processes by memory usage

> [!TIP]
> Stretch goal : Feel free to optionally add more stats such as os version, uptime, load average, logged in users, failed login attempts etc.

## Getting Started

1. **Clone the repository**

    ```bash
    git clone <https://github.com/abhinavbharadwajr/learn.devops.git>
    cd server-performance-stats
    ```

2. **Make the script executable**

    ```bash
    chmod +x server-stats.sh
    ```

3. **Execute the script**  

    ```bash
    ./server-stats.sh
    ```

This project is part of [roadmap.sh](https://roadmap.sh/projects/server-stats) DevOps projects.
