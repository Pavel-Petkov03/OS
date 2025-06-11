Chatroom Using Named Pipes (FIFOs) - C Implementation

## Overview

This project implements a simple multi-user chatroom using **named pipes (FIFOs)** in C. It demonstrates interprocess communication (IPC) by enabling multiple clients to send and receive messages through a server process.

## Features

- Uses **named pipes** for communication between server and clients.
- Supports multiple clients communicating simultaneously.
- Server manages message routing between connected clients.
- Simple text-based messaging interface.

## How It Works

- The **server** creates named pipes and listens for incoming client connections.
- Each **client** connects to the server via named pipes.
- Clients send messages to the server, which then broadcasts them to all connected clients.
- Communication uses blocking I/O with synchronization handled via FIFOs.
