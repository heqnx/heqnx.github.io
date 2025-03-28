document.addEventListener('keydown', function(event) { if (event.ctrlKey && (event.key === '+' || event.key === '-' || event.key === '0')) { event.preventDefault(); } });
document.addEventListener('wheel', function(event) { if (event.ctrlKey) { event.preventDefault(); } }, { passive: false });
document.addEventListener('gesturestart', function(event) { event.preventDefault(); });
document.addEventListener('gesturechange', function(event) { event.preventDefault(); });
document.addEventListener('gestureend', function(event) { event.preventDefault(); });
