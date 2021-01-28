console.log("Hello from app/javascript/packs/search.js!");

const searchCocktail = () => {

  const search = document.querySelector('#search');
  const results = document.querySelector("#results");


  const searchWord = (query) => {
    fetch(`https://www.thecocktaildb.com/api/json/v1/1/search.php?s=${query}`)
    .then(response => response.json())
    .then((data) => {
      console.log(data, data.drinks[0].strDrink);
      data.drinks.forEach((i)=> { console.log(i)});
      data.drinks.forEach((drink) => {
        results.insertAdjacentHTML('beforeend', `

          <div class="card-category" style="background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)), url(${drink.strDrinkThumb})">
            ${drink.strDrink}

          </div>

          `);
      });
    });
  };


  const dataInInput = search.addEventListener("keyup", (event) => {
    console.log(search.value);
    const query = search.value;
    searchWord(query);
    results.innerHTML = "";
  });


  const resetButton = document.querySelector('#reset');
  resetButton.addEventListener("click", (event) => {
    search.value = "";
    results.innerHTML = "";
  });

}

export { searchCocktail };
