const statusOnLoadYellow = () => {
  const status1 = document.querySelector(".yellow-neon-button");
  if(status1) {
    status1.classList.add("java-yellow");
  }
}

const statusOnLoadGreen = () => {
  const status2 = document.querySelector(".green-neon-button");
  if(status2) {
    status2.classList.add("java-green");
  }
}

export { statusOnLoadYellow, statusOnLoadGreen };
