# Proyecto Multicloud: Automatización con Terraform y GitHub Actions

Este proyecto automatiza el despliegue de una infraestructura en Azure usando Terraform y configura un flujo de GitHub Actions para actualizar dinámicamente las reglas de seguridad según la IP pública del usuario.

## Requisitos
- Cuenta de Azure con permisos para crear recursos.
- Terraform instalado.
- GitHub Actions configurado con secretos.

## Instrucciones
1. Clona el repositorio.
2. Configura las credenciales de Azure en GitHub Secrets.
3. Aplica la configuración de Terraform: `terraform apply`.
4. Verifica el flujo de GitHub Actions en la pestaña "Actions".

## Recursos creados
- Grupo de recursos
- Red virtual y subred
- Máquina virtual con IP pública
- Cuenta de almacenamiento
- Grupo de seguridad de red (NSG) con reglas dinámicas