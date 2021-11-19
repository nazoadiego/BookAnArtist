const statusOnLoadYellow = () => {
  const status1 = document.querySelector(".yellow-neon-button");
  status1.classList.add("java-yellow");
}

const statusOnLoadGreen = () => {
  const status2 = document.querySelector(".green-neon-button");
  status2.classList.add("java-green");
}

export { statusOnLoadYellow, statusOnLoadGreen };
