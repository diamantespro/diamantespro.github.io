<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Soporte - Diamantes Pro Players Go</title>
    <style>
        :root {
            /* TUS COLORES EXACTOS */
            --bg-app: #0f1115;       
            --card-bg: #1c222e;      
            --accent-blue: #00A8FF;  
            --text-main: #ffffff;
            --text-sec: #94a3b8;     
            --border-color: rgba(255, 255, 255, 0.08);
            --modal-overlay: rgba(0, 0, 0, 0.9); /* Más oscuro el fondo para resaltar */
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            -webkit-tap-highlight-color: transparent;
        }

        /* CORRECCIÓN 1: Forzar que TODOS los enlaces sean blancos por defecto */
        a {
            text-decoration: none;
            color: var(--text-main) !important; /* Importante para arreglar "Enviar Correo" */
        }

        body {
            background-color: var(--bg-app);
            color: var(--text-main);
            display: flex;
            justify-content: center;
            padding: 16px;
            min-height: 100vh;
        }

        .container {
            width: 100%;
            max-width: 420px;
            padding-bottom: 30px;
        }

        /* HEADER PRINCIPAL */
        header {
            text-align: center;
            margin-bottom: 25px;
            padding-top: 10px;
        }

        h1 {
            font-size: 20px;
            font-weight: 700;
            margin-bottom: 4px;
            letter-spacing: 0.5px;
        }

        p.subtitle {
            color: var(--text-sec);
            font-size: 13px;
        }

        /* ETIQUETAS */
        .section-label {
            color: var(--text-sec);
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
            margin-left: 12px;
            margin-bottom: 8px;
            margin-top: 24px;
            letter-spacing: 0.8px;
        }

        /* TARJETAS DEL MENÚ */
        .card {
            background-color: var(--card-bg);
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0,0,0,0.3);
            border: 1px solid var(--border-color);
        }

        .menu-item {
            display: flex;
            align-items: center;
            padding: 18px 16px;
            text-decoration: none;
            background: var(--card-bg);
            border-bottom: 1px solid var(--border-color);
            transition: background 0.2s;
            cursor: pointer;
            color: var(--text-main); /* Asegura color blanco */
        }

        .menu-item:last-child {
            border-bottom: none;
        }

        .menu-item:active {
            background-color: rgba(255, 255, 255, 0.05);
        }

        .icon-box {
            width: 36px;
            height: 36px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 14px;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.05);
        }

        .icon-box svg { width: 20px; height: 20px; }
        
        /* Asegura que el texto del item siempre sea blanco */
        .item-text { 
            flex-grow: 1; 
            font-size: 15px; 
            font-weight: 500; 
            color: var(--text-main) !important;
        }
        
        .arrow { color: var(--text-sec); opacity: 0.5; font-size: 18px; }

        /* COLORES ICONOS */
        .legal-icon { color: var(--text-sec); }
        .wa-icon { color: #25D366; }
        .fb-icon { color: #1877F2; }
        .ig-icon { color: #E1306C; }
        .yt-icon { color: #FF0000; }
        .mail-icon { color: var(--accent-blue); }

        /* FOOTER */
        .footer {
            text-align: center;
            margin-top: 40px;
            color: var(--text-sec);
            font-size: 12px;
            opacity: 0.6;
        }

        /* ================= MODAL MEJORADO ================= */
        .modal-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: var(--modal-overlay);
            backdrop-filter: blur(5px);
            z-index: 1000;
            display: none;
            justify-content: center;
            align-items: center;
            padding: 20px;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .modal-overlay.active {
            display: flex;
            opacity: 1;
        }

        .modal-content {
            background-color: var(--card-bg); /* Fondo igual a las tarjetas */
            width: 100%;
            max-width: 480px;
            height: 85vh;
            border-radius: 20px;
            display: flex;
            flex-direction: column;
            box-shadow: 0 20px 50px rgba(0,0,0,0.8);
            border: 1px solid rgba(255,255,255,0.1);
            transform: scale(0.95);
            transition: transform 0.3s cubic-bezier(0.16, 1, 0.3, 1);
            overflow: hidden;
        }

        .modal-overlay.active .modal-content {
            transform: scale(1);
        }

        /* HEADER DEL MODAL */
        .modal-header {
            padding: 18px 20px;
            border-bottom: 1px solid var(--border-color);
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: var(--card-bg);
            z-index: 10;
            flex-shrink: 0;
        }

        .modal-title {
            font-size: 17px;
            font-weight: 700;
            color: var(--text-main);
        }

        /* CORRECCIÓN 2: BOTÓN DE CERRAR LIMPIO */
        .close-btn {
            background: transparent; /* Fondo transparente */
            border: none;
            color: var(--text-sec); /* Color gris suave */
            width: 32px;
            height: 32px;
            border-radius: 50%;
            font-size: 28px; /* X más grande */
            line-height: 1;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: color 0.2s;
            padding-bottom: 4px; /* Pequeño ajuste visual */
        }

        .close-btn:active {
            color: #fff;
            background: rgba(255,255,255,0.1);
        }

        /* CUERPO DEL MODAL */
        .modal-body {
            padding: 24px;
            overflow-y: auto;
            -webkit-overflow-scrolling: touch; 
            flex-grow: 1;
            font-size: 14px;
            line-height: 1.6;
            color: #cbd5e1;
        }

        /* CORRECCIÓN 3: SCROLLBAR INVISIBLE/OSCURO */
        /* Para Chrome, Safari y Opera */
        .modal-body::-webkit-scrollbar {
            width: 4px; /* Muy delgada */
        }

        .modal-body::-webkit-scrollbar-track {
            background: transparent; /* Fondo transparente */
        }

        .modal-body::-webkit-scrollbar-thumb {
            background-color: #334155; /* Gris oscuro que se mezcla */
            border-radius: 10px;
        }
        
        /* Para Firefox */
        .modal-body {
            scrollbar-width: thin;
            scrollbar-color: #334155 transparent;
        }

        /* ESTILOS DE TEXTO EN MODAL */
        .modal-body h3 {
            color: var(--accent-blue);
            margin-top: 24px;
            margin-bottom: 12px;
            font-size: 15px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            border-left: 3px solid var(--accent-blue);
            padding-left: 10px;
        }
        
        .modal-body h3:first-child { margin-top: 0; }
        .modal-body p { margin-bottom: 12px; text-align: justify; }
        .modal-body ul { margin-left: 20px; margin-bottom: 20px; color: var(--text-sec); }
        .modal-body li { margin-bottom: 6px; }
        .modal-body strong { color: #fff; font-weight: 700; }

    </style>
</head>
<body>

    <div class="container">
        
        <header>
            <h1>Soporte y Ayuda</h1>
            <p class="subtitle">Diamantes Pro Players Go</p>
        </header>

        <div class="section-label">LEGAL Y NORMATIVA</div>
        <div class="card">
            <div class="menu-item" onclick="openModal('privacyModal')">
                <div class="icon-box"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" class="legal-icon"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/><path d="M12 8v4"/><path d="M12 16h.01"/></svg></div>
                <div class="item-text">Política de Privacidad</div>
                <div class="arrow">›</div>
            </div>
            <div class="menu-item" onclick="openModal('termsModal')">
                <div class="icon-box"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" class="legal-icon"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/><line x1="16" y1="13" x2="8" y2="13"/><line x1="16" y1="17" x2="8" y2="17"/><polyline points="10 9 9 9 8 9"/></svg></div>
                <div class="item-text">Términos y Condiciones</div>
                <div class="arrow">›</div>
            </div>
        </div>

        <div class="section-label">CONTACTO DIRECTO</div>
        <div class="card">
            <a href="mailto:follgramer@gmail.com" class="menu-item">
                <div class="icon-box"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" class="mail-icon"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg></div>
                <div class="item-text">Enviar Correo</div>
                <div class="arrow">›</div>
            </a>
        </div>

        <div class="section-label">COMUNIDAD OFICIAL</div>
        <div class="card">
            <div class="menu-item" onclick="openSocial('whatsapp://channel/0029Vb7ezDW89ingRbP4Ko2B', 'https://whatsapp.com/channel/0029Vb7ezDW89ingRbP4Ko2B')">
                <div class="icon-box"><svg viewBox="0 0 24 24" fill="currentColor" class="wa-icon"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 0 1-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 0 1-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 0 1 2.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0 0 12.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 0 0 5.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 0 0-3.48-8.413Z"/></svg></div>
                <div class="item-text">Canal de Novedades (WhatsApp)</div>
                <div class="arrow">›</div>
            </div>

            <div class="menu-item" onclick="openSocial('fb://facewebmodal/f?href=https://www.facebook.com/AppMagnos', 'https://www.facebook.com/AppMagnos')">
                <div class="icon-box"><svg viewBox="0 0 24 24" fill="currentColor" class="fb-icon"><path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/></svg></div>
                <div class="item-text">Comunidad en Facebook</div>
                <div class="arrow">›</div>
            </div>

            <div class="menu-item" onclick="openSocial('instagram://user?username=majezticpro', 'https://www.instagram.com/majezticpro')">
                <div class="icon-box"><svg viewBox="0 0 24 24" fill="currentColor" class="ig-icon"><path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z"/></svg></div>
                <div class="item-text">Novedades en Instagram</div>
                <div class="arrow">›</div>
            </div>

            <div class="menu-item" onclick="openSocial('vnd.youtube://www.youtube.com/@diamantesgratis6085', 'https://www.youtube.com/@diamantesgratis6085')">
                <div class="icon-box"><svg viewBox="0 0 24 24" fill="currentColor" class="yt-icon"><path d="M23.498 6.186a3.016 3.016 0 0 0-2.122-2.136C19.505 3.545 12 3.545 12 3.545s-7.505 0-9.377.505A3.017 3.017 0 0 0 .502 6.186C0 8.07 0 12 0 12s0 3.93.502 5.814a3.016 3.016 0 0 0 2.122 2.136c1.871.505 9.376.505 9.376.505s7.505 0 9.377-.505a3.015 3.015 0 0 0 2.122-2.136C24 15.93 24 12 24 12s0-3.93-.502-5.814zM9.545 15.568V8.432L15.818 12l-6.273 3.568z"/></svg></div>
                <div class="item-text">Tutoriales (YouTube)</div>
                <div class="arrow">›</div>
            </div>
        </div>

        <div class="footer">
            <p>Versión 27</p>
            <p>© 2026 Diamantes Pro Players Go</p>
        </div>

    </div>

    <div class="modal-overlay" id="privacyModal">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-title">Política de Privacidad</div>
                <button class="close-btn" onclick="closeModal('privacyModal')">&times;</button>
            </div>
            <div class="modal-body">
                <p style="color:var(--text-sec); font-size:13px;">Última actualización: Noviembre 2025</p>
                <p><strong>Diamantes Pro Players Go</strong> ("nosotros", "la aplicación") se compromete a proteger la privacidad de nuestros usuarios.</p>

                <h3>1. INFORMACIÓN QUE RECOPILAMOS</h3>
                <p><strong>1.1 Información Personal Voluntaria:</strong></p>
                <ul>
                    <li><strong>Identificador interno:</strong> Código ingresado voluntariamente para actividades internas. No corresponde a servicios externos.</li>
                    <li><strong>Contacto:</strong> Solo si se requiere comunicación por soporte.</li>
                </ul>

                <p><strong>1.2 Uso de la App:</strong></p>
                <ul>
                    <li>Progreso interno (puntos, tokens).</li>
                    <li>Interacciones (clics, tiempo en app).</li>
                    <li>Configuraciones y preferencias.</li>
                </ul>

                <p><strong>1.3 Información Técnica:</strong></p>
                <ul>
                    <li>Datos del dispositivo (modelo, SO, versión).</li>
                    <li>Datos de conexión (IP, red).</li>
                </ul>

                <h3>2. USO DE LA INFORMACIÓN</h3>
                <ul>
                    <li>Gestionar actividades internas.</li>
                    <li>Calcular recompensas virtuales.</li>
                    <li>Mejorar la experiencia del usuario.</li>
                </ul>

                <h3>3. SERVICIOS DE TERCEROS</h3>
                <ul>
                    <li><strong>Google AdMob:</strong> Para mostrar anuncios.</li>
                    <li><strong>Firebase:</strong> Para almacenamiento y análisis.</li>
                </ul>

                <h3>4. COMPARTIR INFORMACIÓN</h3>
                <p>No vendemos información personal. Solo compartimos datos mínimos necesarios para el funcionamiento interno o requerimientos legales.</p>

                <h3>5. SEGURIDAD</h3>
                <p>Aplicamos medidas razonables para proteger los datos almacenados.</p>

                <h3>6. DERECHOS DEL USUARIO</h3>
                <ul>
                    <li>Acceso a su información.</li>
                    <li>Corrección y eliminación de datos.</li>
                </ul>

                <h3>7. MENORES DE EDAD</h3>
                <p>App para mayores de 13 años. No recopilamos datos de menores intencionalmente.</p>

                <h3>NO AFILIACIÓN</h3>
                <p>Esta aplicación <strong>NO</strong> está afiliada, patrocinada o aprobada por ninguna empresa de videojuegos externa. Todo es exclusivamente interno.</p>
                <br>
            </div>
        </div>
    </div>

    <div class="modal-overlay" id="termsModal">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-title">Términos y Condiciones</div>
                <button class="close-btn" onclick="closeModal('termsModal')">&times;</button>
            </div>
            <div class="modal-body">
                <p style="color:var(--text-sec); font-size:13px;">Última actualización: Noviembre 2025</p>

                <h3>1. ACEPTACIÓN</h3>
                <p>Al usar la app, acepta estos términos y la política de privacidad. Si no acepta, debe dejar de usar la aplicación.</p>

                <h3>2. DESCRIPCIÓN DEL SERVICIO</h3>
                <ul>
                    <li>Actividades internas de entretenimiento.</li>
                    <li>Acumulación de puntos/tokens sin valor monetario real.</li>
                </ul>

                <h3>3. REGLAS DE USO</h3>
                <ul>
                    <li>Prohibido el fraude o manipulación.</li>
                    <li>Prohibido el uso de múltiples cuentas indebidas.</li>
                    <li>Prohibido dar información falsa.</li>
                </ul>

                <h3>4. RECOMPENSAS VIRTUALES</h3>
                <p>Las recompensas:</p>
                <ul>
                    <li>No tienen valor monetario.</li>
                    <li>No son transferibles a plataformas externas.</li>
                    <li>No representan bienes reales.</li>
                </ul>

                <h3>NO AFILIACIÓN OFICIAL</h3>
                <p>La app <strong>NO</strong> está afiliada ni aprobada por Garena, Free Fire u otras empresas. Todos los elementos son independientes.</p>

                <h3>5. CONTACTO</h3>
                <p>Email: <span style="color:var(--accent-blue)">follgramer@gmail.com</span></p>
                <br>
            </div>
        </div>
    </div>

    <script>
        function openModal(id) {
            const modal = document.getElementById(id);
            modal.style.display = 'flex';
            // Pequeño delay para permitir la transición de opacidad
            setTimeout(() => {
                modal.classList.add('active');
            }, 10);
            document.body.style.overflow = 'hidden'; 
        }

        function closeModal(id) {
            const modal = document.getElementById(id);
            modal.classList.remove('active');
            setTimeout(() => {
                modal.style.display = 'none';
                document.body.style.overflow = '';
            }, 300); // Espera a que termine la animación
        }

        // Cerrar al tocar el fondo oscuro
        window.onclick = function(event) {
            if (event.target.classList.contains('modal-overlay')) {
                closeModal(event.target.id);
            }
        }

        function openSocial(appUrl, webUrl) {
            window.location = appUrl;
            setTimeout(function() {
                window.location = webUrl;
            }, 500);
        }
    </script>
</body>
</html>
