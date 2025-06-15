function handleCredentialResponse(response) {
    console.log("\n response Payload:", response);

    // Decode the JWT token to get user info
    const responsePayload = parseJwt(response.credential);

    console.log("\nDecoded JWT Payload:", responsePayload);
    console.log("\nDetailed User Info:");
    console.log("ID: " + responsePayload.sub);
    console.log('Full Name: ' + responsePayload.name);
    console.log('Given Name: ' + responsePayload.given_name);
    console.log('Family Name: ' + responsePayload.family_name);
    console.log("Image URL: " + responsePayload.picture);
    console.log("Email: " + responsePayload.email);
    console.log("Email Verified: " + responsePayload.email_verified);
    console.log("Issuer: " + responsePayload.iss);
    console.log("Audience: " + responsePayload.aud);
    console.log("Issued At: " + new Date(responsePayload.iat * 1000));
    console.log("Expiration: " + new Date(responsePayload.exp * 1000));

    // Display user info
    document.getElementById('user-pic').src = responsePayload.picture;
    document.getElementById('user-name').textContent = responsePayload.name;
    document.getElementById('user-email').textContent = responsePayload.email;

    // Show user info and hide sign-in button
    document.getElementById('signin-container').classList.add('hidden');
    document.getElementById('user-info').classList.remove('hidden');
}

// Helper function to parse JWT token
function parseJwt(token) {
    try {
        const base64Url = token.split('.')[1];
        const base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
        const jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
            return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
        }).join(''));

        return JSON.parse(jsonPayload);
    } catch (e) {
        console.error("Error parsing JWT:", e);
        return null;
    }
}

// Sign out function
document.getElementById('signout-btn').addEventListener('click', () => {
    // Google doesn't provide a direct sign-out API for One Tap, so we just hide the user info
    document.getElementById('user-info').classList.add('hidden');
    document.getElementById('signin-container').classList.remove('hidden');

    // Clear any stored credentials
    google.accounts.id.revoke(localStorage.getItem('email'), done => {
        console.log('consent revoked');
    });
});