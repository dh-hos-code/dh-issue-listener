# Hiển thị thông tin các tệp đã được commit
Write-Host "=== Listing committed files ===" -ForegroundColor Cyan
git ls-tree -r -t -l HEAD

# Ngăn cách bằng dòng trống để dễ đọc
Write-Host "`n"

# Hiển thị các tệp chưa được theo dõi (untracked files)
Write-Host "=== Listing untracked files ===" -ForegroundColor Yellow
git ls-files --others

# Ngăn cách bằng dòng trống để dễ đọc
Write-Host "`n"