document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll(".copy-btn").forEach((button) => {
        button.addEventListener("click", function () {
            const codeContainer = button.previousElementSibling; // Get the <pre> element                                                                                                     
            const code = codeContainer.textContent;

            // Copy to clipboard                                                                                                                                                              
            navigator.clipboard.writeText(code).then(() => {
                button.textContent = "Copied!";
                setTimeout(() => (button.textContent = "Copy"), 2000);
            }).catch(err => {
                console.error("Failed to copy text: ", err);
            });
        });
    });
});
