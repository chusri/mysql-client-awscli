# mysql-client-awscli:alpine-3.21

A minimal Docker image based on Alpine Linux 3.21 with:

- 🐬 MySQL 5 client (`mysql`)
- ☁️ AWS CLI (`aws`)
- 🐳 Lightweight footprint (~20MB)

Ideal for database dumps, backups to S3, and CLI-based workflows in CI/CD or Kubernetes CronJobs.

---

## 🧰 Included Tools

| Tool         | Version  |
|--------------|----------|
| Alpine Linux | 3.21     |
| MySQL Client | 5.x      |
| AWS CLI      | v2.x     |

---

## 🚀 Usage

### 📥 Pull from DockerHub

```bash
docker pull chusri/mysql-client-awscli:alpine-3.21
```


### 🛠️ Example: MySQL Dump to S3

```bash
docker run --rm \
  -e AWS_ACCESS_KEY_ID=xxx \
  -e AWS_SECRET_ACCESS_KEY=yyy \
  chusri/mysql-client-awscli:alpine-3.21 \
  sh -c 'mysqldump -h your-db-host -u your-user -pYOUR_PASSWORD your_db \
  | gzip | aws s3 cp - s3://your-bucket/mysql-backup.sql.gz'
```

---

## 🧪 Build Locally
```bash
docker build -t chusri/mysql-client-awscli:alpine-3.21 .
```

## 📝 License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
