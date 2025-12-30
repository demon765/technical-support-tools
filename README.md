
# Technical Support Portfolio & Automation Tools

**Author:** Anandha Narayanan V  
**Role:** Technical Support Engineer | Linux & Network Specialist

This repository contains a collection of diagnostic scripts and automation tools developed to troubleshoot common issues encountered in Cloud Support environments. The tools focus on the three core pillars of web infrastructure: **Network Diagnostics**, **System Administration**, and **HTTP/Security Protocols**.

---

## 📂 Project List

### 🌐 1. Network Diagnostics

#### **Global DNS Propagation Checker** (`dns_propagation.sh`)
* **Description:** Queries multiple public DNS resolvers (Google, Cloudflare, Quad9) simultaneously to verify if A-record updates have propagated globally.
* **Tech Stack:** Bash, `dig`
* **Use Case:** Troubleshooting "it works for me but not for the customer" scenarios caused by DNS caching.

#### **Network Health & Latency Monitor** (`network_monitor.sh`)
* **Description:** A background tool that monitors connectivity to a target host. It detects and logs high-latency spikes (>100ms) and timeouts that simple ping tests often miss.
* **Tech Stack:** Bash, `ping`, `awk`
* **Use Case:** Identifying intermittent packet loss in client-server connections.

### 🔒 2. Web & Security (HTTP/SSL)

#### **SSL/TLS Certificate Expiry Checker** (`ssl_checker.sh`)
* **Description:** Connects to a domain via port 443 and retrieves the SSL certificate expiration date using OpenSSL.
* **Tech Stack:** Bash, `openssl`
* **Use Case:** Proactively preventing outages caused by expired security certificates.

#### **HTTP Status & Header Inspector** (`site_checker.py`)
* **Description:** A Python script that performs bulk health checks on URLs. It returns HTTP status codes (200, 404, 503) and inspects headers.
* **Tech Stack:** Python 3, `requests` library
* **Use Case:** Verifying server availability and checking CDN headers (like `Cache-Control`) across multiple endpoints.

### 🐧 3. System Administration & Logs

#### **Automated Log Analysis Tool** (`log_analyzer.sh`)
* **Description:** Parses raw application server logs to identify critical failure patterns. It automatically counts occurrences of "500 Internal Server Errors" and "404 Not Found" events.
* **Tech Stack:** Bash, `grep`, `wc`
* **Use Case:** Rapidly assessing the severity of an incident during triage by analyzing log volume.

#### **Server Resource Guard** (`resource_monitor.sh`)
* **Description:** Checks the current Disk and RAM usage of a Linux server and alerts if usage exceeds safety thresholds (80% Disk, 90% RAM).
* **Tech Stack:** Bash, `df`, `free`
* **Use Case:** Preventing server crashes due to resource exhaustion.

---

## 🚀 How to Run These Scripts

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/YOUR_USERNAME/technical-support-tools.git](https://github.com/YOUR_USERNAME/technical-support-tools.git)
   cd technical-support-tools

```

2. **Make scripts executable (Linux/Mac):**
```bash
chmod +x *.sh

```


3. **Run a specific tool:**
* *Example (Log Analyzer):* `./log_analyzer.sh dummy_server.log`
* *Example (SSL Check):* `./ssl_checker.sh google.com`
* *Example (Python HTTP):* `python3 site_checker.py`



---

## 🛠 Skills Demonstrated

* **Linux CLI:** Advanced usage of `awk`, `grep`, `sed`, and I/O redirection.
* **Networking:** Deep understanding of DNS resolution, SSL handshakes, and TCP/IP latency.
* **Scripting:** Automating repetitive troubleshooting tasks using Bash and Python.

```

```
