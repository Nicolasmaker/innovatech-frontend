# Innovatech Frontend - Buscador de Feriados

Frontend moderno para buscar y filtrar feriados en Chile usando la API de Boostr.cl

## Características

✅ **Buscador avanzado** - Filtra por nombre, fecha y tipo de feriado
✅ **Interfaz moderna** - Diseño responsivo y profesional
✅ **Validación de backend** - Verifica conexión en tiempo real
✅ **Integración con API** - Consume datos desde el backend
✅ **Información de eventos** - Muestra detalles completos de feriados

## Requisitos

- Navegador web moderno (Chrome, Firefox, Safari, Edge)
- Backend funcionando en `http://localhost:3000`
- Node.js y npm (para desarrollo)

## Cómo Usar

### Ejecución Simple

1. **Abre el archivo directamente** en tu navegador:
```
file:///ruta/al/proyecto/innovatech-frontend/index.html
```

O sirve los archivos con un servidor local:
```bash
# Si tienes Python 3 instalado
python -m http.server 8000

# Si tienes Node.js
npx serve .
```

2. **El frontend se conectará automáticamente** al backend en `http://localhost:3000`

### Funcionalidades

#### 1. Cargar Todos los Feriados
Haz clic en **"📋 Cargar Todos"** para obtener la lista completa de feriados desde el backend.

#### 2. Buscar por Nombre
Escribe el nombre del feriado en el campo de búsqueda y presiona **"🔍 Buscar"**

#### 3. Filtrar por Fecha
Selecciona una fecha específica para encontrar el feriado de ese día.

#### 4. Filtrar por Tipo
Elige entre:
- **Feriado** - Días feriados obligatorios
- **Tirado** - Días tirados (feriados adicionales)

#### 5. Ver Estado del Backend
Haz clic en **"🔗 Verificar Conexión Backend"** para confirmar que el servidor está funcionando.

## Estructura del Proyecto

```
innovatech-frontend/
├── index.html          # Archivo principal con HTML, CSS y JavaScript
└── README.md           # Este archivo
```

## Configuración del Backend

Por defecto, el frontend busca el backend en `http://localhost:3000`

Para cambiar la URL del backend, edita esta línea en `index.html`:

```javascript
const BACKEND_URL = window.env?.BACKEND_URL || "http://localhost:3000";
```

## Endpoints Esperados

El frontend espera que el backend proporcione:

### 1. Obtener Feriados
```
GET http://localhost:3000/api/holidays
```

Respuesta esperada:
```json
[
  {
    "date": "2024-01-01",
    "name": "Año Nuevo",
    "type": "feriado",
    "date_type": "Obligatorio"
  }
]
```

### 2. Verificar Estado
```
GET http://localhost:3000/api/status
```

Respuesta esperada:
```json
{
  "status": "ok",
  "message": "Backend funcionando correctamente"
}
```

## Ejecución Completa

Para ejecutar frontend y backend juntos:

### Terminal 1 - Backend
```bash
cd /workspaces/innovatech-backend
npm install
npm start
# Backend estará en http://localhost:3000
```

### Terminal 2 - Frontend
```bash
cd /workspaces/innovatech-frontend
# Opción A: Abre directamente
open index.html

# Opción B: Usa un servidor local
npx serve .
# Frontend estará en http://localhost:3000 (si no hay conflicto de puerto)
```

Luego abre en tu navegador:
```
http://localhost:8000 (o el puerto del servidor local)
```

## Características Técnicas

- **HTML5** - Markup semántico
- **CSS3** - Diseño responsivo con flexbox y gradientes
- **JavaScript Vanilla** - Sin dependencias externas
- **Fetch API** - Comunicación con el backend
- **Responsive Design** - Funciona en móvil, tablet y desktop

## Solución de Problemas

### El buscador no carga datos
1. Verifica que el backend está corriendo: http://localhost:3000/api/status
2. Comprueba la consola del navegador (F12) para errores
3. Asegúrate que CORS está habilitado en el backend

### Error de conexión
- El backend no está respondiendo en `http://localhost:3000`
- Abre la Terminal y ejecuta: `npm start` en la carpeta del backend
- Verificia que no hay otro proceso en el puerto 3000

### Los feriados no se muestran correctamente
- Comprueba que el formato de datos coincide con lo esperado
- Revisa la respuesta en la sección "Estado del Servidor"

## Licencia

Innovatech Chile 2026
