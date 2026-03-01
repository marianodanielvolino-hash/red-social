# Registro de Cambios (Changelog) - Red Social Web Site

Este documento mantendrá un registro histórico de todas las modificaciones, mejoras y adiciones realizadas en el proyecto al inicio y fin de cada sesión de trabajo.

## [Sesión Actual] - 2026-03-01

### Agregado
- **Formulario de Contacto:** Nueva sección integrada antes de la "Evaluación Técnica" con diseño glassmorphism y campos requeridos para consultas orgánicas.
- **Portal Institucional (Vistas Dinámicas):** Se reemplazó el login estático por un sistema de pantallas completo (Login, Registro, Recuperación de clave) controlable mediante JavaScript (`toggleAuthView`).
- **Entorno de Desarrollo:** Creación del script `start-dev.ps1` para levantar el proyecto localmente usando `live-server`.

### Cambiado
- **Logos de Partners:** Se eliminaron los fondos blancos (`bg-white`), bordes superpuestos y márgenes internos de todos los logos en el carrusel continuo. Todos adoptaron clases estandarizadas (`w-32 h-16 object-contain`) adaptadas a su relación de aspecto original (Tomando CFI.jpg como referencia).
- **Animación del Carrusel:** Velocidad reducida aumentando la duración de `infinite-scroll` a `60s`.

### Solucionado
- **Rutas de NPM:** Se ajustó la configuración de ejecución en la terminal local de PowerShell apuntando explícitamente a las variables de entorno de Node.js para habilitar el servidor de desarrollo en caliente.
