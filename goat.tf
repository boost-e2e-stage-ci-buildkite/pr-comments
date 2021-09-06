
# Goat.tf version 0.8327463100051313
resource "google_storage_bucket" "sensitive-data" {
name          = "secrets.example.com"
location      = "US"
logging {
log_bucket = "secret.example.com-access-logs"
log_object_prefix =  "log/secrets-"
}
}
resource "google_storage_bucket_iam_member" "public-access" {
bucket = google_storage_bucket.sensitive-data.name
role = "roles/storage.objectViewer"
member = "allUsers"
}
