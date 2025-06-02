# ⚙️ CONFIGURA ESTOS VALORES
$GITHUB_TOKEN = "ghp_xxx_tu_token"
$OWNER = "tu-usuario-o-org"
$REPO = "nombre-del-repo"
$WORKFLOW_FILE = "deploy.yml"  # Cambiado aquí
$BRANCH = "main"

# 1. Obtener IP pública
$USER_IP = (Invoke-RestMethod -Uri "https://api.ipify.org")

Write-Host "Tu IP pública es: $USER_IP"

# 2. Preparar el cuerpo JSON
$body = @{
    ref = $BRANCH
    inputs = @{
        user_ip = $USER_IP
    }
} | ConvertTo-Json -Depth 3

# 3. Enviar petición a la API de GitHub para disparar workflow_dispatch
$headers = @{
    "Accept" = "application/vnd.github+json"
    "Authorization" = "Bearer $GITHUB_TOKEN"
}

Invoke-RestMethod -Uri "https://api.github.com/repos/$OWNER/$REPO/actions/workflows/$WORKFLOW_FILE/dispatches" `
    -Method POST `
    -Headers $headers `
    -Body $body

Write-Host "Workflow enviado con IP $USER_IP"
