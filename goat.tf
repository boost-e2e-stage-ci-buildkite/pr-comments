
# Goat.tf version 0.36215324020303497
resource "google_storage_bucket" "sensitive-data" {
name          = "secrets.example.com"
location      = "US"
}
resource "google_storage_bucket_iam_member" "public-access" {
bucket = google_storage_bucket.sensitive-data.name
role = "roles/storage.objectViewer"
member = "allUsers"
}
resource "google_storage_bucket" "some-other-data" {
name          = "another-secrets-bucket.example.com"
location      = "US"
}
resource "google_storage_bucket_iam_member" "some-other-public-access" {
bucket = google_storage_bucket.some-other-data.name
role = "roles/storage.objectViewer"
member = "allUsers"
}
