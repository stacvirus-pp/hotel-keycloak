<#import "template.ftl" as layout>
<@layout.emailLayout>
    <div class="greeting">
        ${msg("otpEmailGreeting")}
    </div>

    <div class="message">
        ${msg("otpEmailInstructions")}
    </div>

    <div class="otp-container">
        <div class="otp-label">
            ${msg("otpEmailCodeLabel", code, ttl)}
        </div>
        <div class="otp-code">
            ${code}
        </div>
    </div>

    <div class="warning">
        <span class="warning-icon">⏰</span>
        <div class="warning-text">
            <strong>Time Sensitive:</strong> ${msg("otpEmailExpiry", ttl)?no_esc}
        </div>
    </div>

    <div class="divider"></div>

    <div class="security-notice">
        <p><strong>🔒 Security Notice:</strong></p>
        <p>${msg("otpEmailSecurity")}</p>
        <p>${msg("otpEmailSupport")}</p>
    </div>
</@layout.emailLayout>