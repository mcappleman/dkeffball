function getMessageHtml(message) {
  if (message.type === "VIDEO") {
    console.log(message);
    return `
      <div class="col-xs-12 col-md-6">
        <div class="pinned-message">
          <video controls>
            <source src="${message.url}">
          </video>
        </div>
      </div>
    `;
  }
  return `
    <div class="col-xs-12 col-md-6">
      <div class="pinned-message">
        <img src="${message.url}" alt="${message.description}" />
      </div>
    </div>
  `;
}

var pinnedMessages = [
  {
    url: "https://i.groupme.com/4032x3024.jpeg.57957be82f204ca2bbe65d4774a41729.large",
    local: null,
    description: "2023 Draft Board part 1",
    type: "IMAGE",
  },
  {
    url: "https://i.groupme.com/4032x3024.jpeg.d4137b4eb5ad47fcbb1069d14dcb707d.large",
    local: null,
    description: "2023 Draft Board part 2",
    type: "IMAGE",
  },
  {
    url: "https://i.groupme.com/3024x4032.jpeg.5a5ccb6754b841dab503d874396a2bbe.large",
    local: null,
    description: "Trevor Beach",
    type: "IMAGE",
  },
  {
    url: "https://i.groupme.com/960x720.jpeg.1e04bc75554044fab78a5ea6b8982882.large",
    local: null,
    description: "Chaz at the DKE House",
    type: "IMAGE",
  },
  {
    url: "https://i.groupme.com/4032x3024.jpeg.74779a2a05c449a59f0336adec1fcc86.large",
    local: null,
    description: "Pensacola Night Out Pic 1",
    type: "IMAGE",
  },
  {
    url: "https://i.groupme.com/4032x3024.jpeg.3bb018db72ed403e9ce3269480c1ae21.large",
    local: null,
    description: "Pensacola Night Out Pic 2 with table, Ross eyes closed",
    type: "IMAGE",
  },
  {
    url: "https://v.groupme.com/42274758/2023-08-19T00:55:43Z/19b0835e.1920x1080r0.mp4",
    local: null,
    description: "Chaz with his belt",
    type: "VIDEO",
  },
  {
    url: "https://v.groupme.com/42274758/2023-08-19T00:55:23Z/54465e.1920x1080r0.mp4",
    local: null,
    description: "Basil giving Chaz the belt",
    type: "VIDEO",
  },
  {
    url: "https://i.groupme.com/4032x3024.jpeg.22ac6fd626884fd7a33a5af6b8600883.large",
    local: null,
    description: "Pensacola Golf Scramble after picture",
    type: "IMAGE",
  },
];

pinnedMessages.forEach((message) => {
  $("#messages-container").append(getMessageHtml(message));
});
