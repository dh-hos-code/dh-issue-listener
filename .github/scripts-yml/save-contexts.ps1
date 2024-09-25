param (
    [string]$outputDir = "./logs"
)

# Tạo thư mục nếu chưa tồn tại
if (-not (Test-Path -Path $outputDir)) { 
    New-Item -ItemType Directory -Path $outputDir 
}

# Hàm ghi context ra file
function Save-Context {
    param (
        [string]$contextName,
        [string]$contextData
    )
    $filePath = Join-Path $outputDir "$contextName-context.json"
    $contextData | Out-File -FilePath $filePath -Encoding utf8
}

# Ghi các context
Save-Context "github" '${{ toJson(github) }}'
Save-Context "env" '${{ toJson(env) }}'
Save-Context "vars" '${{ toJson(vars) }}'
Save-Context "job" '${{ toJson(job) }}'
Save-Context "jobs" '${{ toJson(jobs) }}'
Save-Context "steps" '${{ toJson(steps) }}'
Save-Context "runner" '${{ toJson(runner) }}'
Save-Context "secrets" '${{ toJson(secrets) }}'
Save-Context "strategy" '${{ toJson(strategy) }}'
Save-Context "matrix" '${{ toJson(matrix) }}'
Save-Context "needs" '${{ toJson(needs) }}'
Save-Context "inputs" '${{ toJson(inputs) }}'
