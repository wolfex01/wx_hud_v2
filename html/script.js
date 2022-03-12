window.addEventListener('message', e => {
  const data = e.data;
  $('.fa-heart').css('opacity', `${data.health}%`);
  $('.fa-coffee').css('opacity', `${data.thirst}%`);
  $('.fa-cutlery').css('opacity', `${data.hunger}%`);
  data.type === 'hud' ? document.querySelector('body').classList.toggle('visib') : false;
});
