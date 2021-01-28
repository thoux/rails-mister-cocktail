console.log("Hello from app/javascript/packs/add_to_fav.js!");

const addToFavorite = () => {

  const favButton = document.querySelector('button > .add_to_fav');
    favButton.addEventListener("click", (event) => {
      console.log("Bouton Favoris cliqué");
  });

//   const searchAlgoliaPlaces = (event) => {
//   fetch("https://places-dsn.algolia.net/1/places/query", {
//     method: "POST",
//     body: JSON.stringify({ query: event.currentTarget.value })
//   })
//     .then(response => response.json())
//     .then((data) => {
//       console.log(data.hits); // Look at local_names.default
//     });
// };

}



export { addToFavorite };
