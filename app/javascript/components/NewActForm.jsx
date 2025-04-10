import React from "react";

function NewActForm({ props }) {
  function handleSubmit(e) {
    e.preventDefault();

    const form = e.target;
    const formData = new FormData(form);

    fetch('/acts', { method: form.method, body: formData }); // TODO this doesn't pass the param in a way the controller likes

  }
  return (
    <form method="post" onSubmit={handleSubmit}>
      <label>
        Submit a band: <input name='actName' />
      </label>
      <button type="submit">Vote!</button>
    </form>
  )
}

export default NewActForm;
