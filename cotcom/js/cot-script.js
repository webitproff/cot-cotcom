/* back to top */
// Get the button
let a = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    a.style.display = "block";
  } else {
    a.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
/* back to top */
/*  cot-typed index top Cotonti Open Source 0.9.20 */

  if (document.getElementById("cot-typed")) {
    var typed = new Typed("#cot-typed", {
      stringsElement: "#typed-strings",
      typeSpeed: 250,
      backSpeed: 50,
      backDelay: 200,
      startDelay: 500,
      loop: true
    });
  }
/* SmoothScroll */

var linear = new SmoothScroll('[data-easing="linear"]', {easing: 'linear'});

/* SmoothScroll */
//  не вникал для чего, но каждому select присваем id="MyID" через
// модификацию |cot_rc_modify($this, 'id="MyID"' в самих шаблонах TPL
// затем по примеру вносим сюда
//пример для селекта выбора темы в настройках профиля {USERS_PROFILE_THEME|cot_rc_modify($this, 'id="rusertheme"')}:
/*     if (document.getElementById('rusertheme')) {
      var element = document.getElementById('rusertheme');
      const example = new Choices(element, {
        searchEnabled: false
      });
    } */
	
//Theme users.profile.tpl {USERS_PROFILE_THEME|cot_rc_modify($this, 'id="rusertheme"')}
    if (document.getElementById('rusertheme')) {
      var element = document.getElementById('rusertheme');
      const example = new Choices(element, {
        searchEnabled: false
      });
    }

    if (document.getElementById('language')) {
      var element = document.getElementById('language');
      const example = new Choices(element, {
        searchEnabled: false
      });
    }
    if (document.getElementById('rusercountry')) {
      var element = document.getElementById('rusercountry');
      const example = new Choices(element, {
        searchEnabled: false
      });
    }
//Timezone users.profile.tpl
    if (document.getElementById('rusertimezone')) {
      var element = document.getElementById('rusertimezone');
      const example = new Choices(element, {
        searchEnabled: false
      });
    }
//Gender users.profile.tpl
    if (document.getElementById('rusergender')) {
      var element = document.getElementById('rusergender');
      const example = new Choices(element, {
        searchEnabled: false
      });
    }


// users.tpl
    if (document.getElementById('bycountry')) {
      var element = document.getElementById('bycountry');
      const example = new Choices(element, {
        searchEnabled: false
      });
    }
    if (document.getElementById('bymaingroup')) {
      var element = document.getElementById('bymaingroup');
      const example = new Choices(element, {
        searchEnabled: false
      });
    }
    if (document.getElementById('bygroupms')) {
      var element = document.getElementById('bygroupms');
      const example = new Choices(element, {
        searchEnabled: false
      });
    }
//PAGEADD	
    if (document.getElementById('rpagecat')) {
      var element = document.getElementById('rpagecat');
      const example = new Choices(element, {
        searchEnabled: false
      });
    }
    if (document.getElementById('rpageparser')) {
      var element = document.getElementById('rpageparser');
      const example = new Choices(element, {
        searchEnabled: false
      });
    }
//PM	
    if (document.getElementById('pm_selected')) {
      var element = document.getElementById('pm_selected');
      const example = new Choices(element, {
        searchEnabled: false
      });
    }