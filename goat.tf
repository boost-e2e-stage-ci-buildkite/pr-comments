
# Goat.tf version 0.3080026473325501
resource "google_storage_bucket" "sensitive-data" {
name          = "secrets.example.com"
location      = "US"
}
resource "google_storage_bucket_iam_member" "public-access" {
bucket = google_storage_bucket.sensitive-data.name
role = "roles/storage.objectViewer"
member = "allUsers"
}
