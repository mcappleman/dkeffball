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

var pinnedMessages = [];
