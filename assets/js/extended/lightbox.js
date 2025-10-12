document.addEventListener('click', (e) => {
  const a = e.target.closest('a.lightbox');
  if (!a) return;
  e.preventDefault();
  let overlay = document.getElementById('bh-lightbox');
  if (!overlay) {
    overlay = document.createElement('div');
    overlay.id = 'bh-lightbox';
    overlay.innerHTML = '<div class="bh-lb-backdrop"></div><img class="bh-lb-img" alt=""><div class="bh-lb-caption"></div>';
    document.body.appendChild(overlay);
    overlay.addEventListener('click', () => overlay.classList.remove('open'));
    document.addEventListener('keydown', (ev) => { if (ev.key === 'Escape') overlay.classList.remove('open'); });
  }
  overlay.querySelector('.bh-lb-img').src = a.href;
  overlay.querySelector('.bh-lb-img').alt = a.dataset.title || '';
  overlay.querySelector('.bh-lb-caption').textContent = a.dataset.title || '';
  overlay.classList.add('open');
});
console.log("Lightbox loaded");

