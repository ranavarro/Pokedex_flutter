# Pokédex App - Prueba Técnica Flutter
Esta es una aplicación móvil moderna, desarrollada en Flutter, que permite a los usuarios explorar un vasto catálogo de Pokémon, visualizar sus detalles, gestionar una lista de favoritos y filtrar la información de manera eficiente.

El proyecto ha sido construido siguiendo las mejores prácticas de desarrollo de software, con un fuerte enfoque en una arquitectura limpia y escalable, una gestión de estado reactiva y una implementación de UI fiel a las especificaciones de diseño.


## ✨ Características Principales
* Lista de Pokémon con Scroll Infinito: Navega de forma fluida por cientos de Pokémon. La lista carga más datos automáticamente a medida que te desplazas.
* Pantalla de Detalles Sofisticada: Una interfaz elegante con animaciones y transiciones que muestra estadísticas, habilidades y movimientos de cada Pokémon.
* Sistema de Favoritos Persistente: Guarda tus Pokémon preferidos. Tu selección se almacena localmente en el dispositivo para que esté disponible cada vez que abras la app.
* Búsqueda y Filtro Combinados: Encuentra Pokémon instantáneamente por su nombre o filtra la lista por un tipo a través de un "bottom sheet" interactivo.
* Animaciones de Calidad Profesional:
  * Hero Animation: Transiciones suaves de la imagen del Pokémon desde la lista hasta la pantalla de detalles.
  * Shimmer Effect: Esqueletos de carga elegantes que mejoran la percepción de rendimiento.
  * Animaciones Sutiles: Pequeños detalles en toda la UI para una experiencia más viva.
* Diseño Fiel a Figma: Cada pantalla, componente y espaciado ha sido cuidadosamente implementado para ser un reflejo exacto del diseño proporcionado, demostrando atención al detalle.
* Internacionalización (i18n): La app está preparada para múltiples idiomas (actualmente Inglés y Español), utilizando flutter_localizations para una gestión de texto limpia.

## 🚀 Cómo Ejecutar el Proyecto
Sigue estas instrucciones para poner en marcha el proyecto en tu entorno local.

### Prerrequisitos
* Tener instalado el SDK de Flutter (versión 3.19 o superior).
* Un emulador de Android/iOS o un dispositivo físico conectado.
* Entorno de desarrollo configurado (VS Code o Android Studio).

### Pasos de Instalación
1. Clona el repositorio:
git clone https://github.com/ranavarro/Pokedex_flutter.git
cd pokedex_app

2. Instala las dependencias:
flutter pub get

3. Genera los archivos de código: Este proyecto utiliza build_runner para la generación automática de código para freezed, riverpod_generator y go_router. Este paso es crucial.
dart run build_runner build --delete-conflicting-outputs
Nota: Deberás ejecutar este comando cada vez que modifiques un archivo con anotaciones como @riverpod, @freezed, etc.

4. Ejecuta la aplicación:
flutter run

## 🏗️ Arquitectura y Estructura del Proyecto
La aplicación se fundamenta en dos pilares arquitectónicos: Arquitectura Limpia (Clean Architecture) y una organización de carpetas Feature-First.

### Arquitectura Limpia
Esta arquitectura separa el código en capas independientes, cada una con una responsabilidad clara. Esto hace que la aplicación sea robusta, escalable y, sobre todo, fácil de probar y mantener.

* Capa de Presentación (Presentation): Contiene todo lo relacionado con la UI.
  * screens: Widgets que representan una pantalla completa.
  * widgets: Componentes de UI reutilizables.
  * notifiers / providers: Lógica de estado y gestión de la UI, implementada con Riverpod.

* Capa de Dominio (Domain): Es el núcleo de la aplicación, totalmente independiente de cualquier framework.
  * entities: Los modelos de negocio puros de la aplicación (ej. PokemonDetail). 
  * repositories: Clases abstractas (contratos) que definen qué operaciones de datos se pueden realizar (ej. getPokemons()).

* Capa de Datos (Data): Es la implementación concreta de los contratos del dominio.
  * repositories: Implementaciones de los repositorios que interactúan con las fuentes de datos. 
  * models: DTOs (Data Transfer Objects) que representan la estructura exacta de la respuesta de la API.

### Estructura Feature-First
En lugar de tener carpetas presentation, domain y data en la raíz, el código se agrupa por funcionalidad. Esto mantiene todo lo relacionado con una característica (como pokemon_list) en un solo lugar, mejorando la cohesión y haciendo que el proyecto sea más fácil de navegar.

lib/
├── features/
│   ├── pokemon_list/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   ├── pokemon_detail/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   └── pokemon_favorites/
│       ├── data/
│       ├── domain/
│       └── presentation/
│
└── core/  (Código transversal: router, tema, widgets compartidos, etc.)

## 🤖 Uso de Asistencia por IA (Gemini)
Para el desarrollo de este proyecto, se empleó un modelo de lenguaje de IA (Gemini) en un rol de Asistente de Desarrollo en Flutter. El objetivo principal fue optimizar el tiempo de desarrollo y asegurar la adherencia a las mejores prácticas de la industria.

Reglas y Metodología de Uso:
* Generación de Código Repetitivo (Boilerplate): Se utilizó para acelerar la creación de código repetitivo, como la estructura de los modelos de datos con freezed, y la configuración inicial de Riverpod.
* Implementación de Diseño (UI Scaffolding): Se proporcionaron imágenes y especificaciones del diseño de Figma para generar el andamiaje inicial de la UI.
* Diagnóstico y Resolución de Problemas: La IA actuó como una herramienta de diagnóstico para proponer soluciones a problemas complejos, como la ruptura de la animación Hero durante refactorizaciones.
* Optimización y Refactorización: Se le solicitó a la IA que analizara secciones específicas del código y sugiriera mejoras para aumentar la legibilidad, eficiencia y el cumplimiento de principios como SOLID y Clean Code.
* Creación de Tests Unitarios: Se utilizó para generar la estructura base de los tests unitarios.

En conclusión, la IA fue una herramienta de productividad que permitió al desarrollador delegar tareas mecánicas y de consulta, para así poder enfocarse en los aspectos más críticos del proyecto: la arquitectura de alto nivel, la lógica de negocio y la calidad de la experiencia de usuario.

## 🛡️ Capas de Seguridad
Dado que la aplicación consume una API pública y gratuita (PokéAPI) y no maneja autenticación ni datos de usuario sensibles, las medidas de seguridad se centran en la robustez del cliente y la integridad de los datos.

* Comunicación Segura (HTTPS): Todas las llamadas a la API se realizan exclusivamente a través de HTTPS. El cliente Dio está configurado con la URL base https://pokeapi.co/, garantizando que toda la comunicación entre la app y el servidor esté encriptada.
* Manejo de Errores de Red: Se ha implementado un manejo de errores robusto en la capa de datos. Si la API falla o devuelve un error, la aplicación lo gestiona de forma controlada y muestra un mensaje apropiado al usuario, en lugar de bloquearse.
* Inmutabilidad del Estado: El uso extensivo de freezed para los modelos de datos y estados de Riverpod garantiza la inmutabilidad. Esto previene efectos secundarios inesperados y vulnerabilidades que pueden surgir de la modificación accidental del estado en diferentes partes de la aplicación.
* La única información que se guarda localmente es una lista de nombres de Pokémon favoritos (SharedPreferences), sin recolectar ni almacenar ninguna información personal identificable. Estos datos son privados para la aplicación y no se comparten con otras aplicaciones ni se envían a ningún servidor remoto