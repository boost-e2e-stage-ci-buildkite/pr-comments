
# Goat.tf version 0.7817588231103743
resource "google_storage_bucket" "sensitive-data" {
name          = "secrets.example.com"
location      = "US"
logging {
log_bucket = "secret.example.com-access-logs"
log_object_prefix =  "log/some-other-secrets-"
}
}
resource "google_storage_bucket_iam_member" "public-access" {
bucket = google_storage_bucket.sensitive-data.name
role = "roles/storage.objectViewer"
member = "allUsers"
}
