<#macro emailLayout>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>${msg("otpEmailSubject")}</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
                background-color: #f6f9fc;
                line-height: 1.6;
                color: #333;
            }

            .email-container {
                max-width: 600px;
                margin: 0 auto;
                background-color: #ffffff;
                border-radius: 12px;
                overflow: hidden;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            }

            .header {
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                padding: 40px 30px;
                text-align: center;
                color: white;
            }

            .header h1 {
                font-size: 28px;
                font-weight: 700;
                margin-bottom: 8px;
                text-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .header p {
                font-size: 16px;
                opacity: 0.9;
            }

            .content {
                padding: 40px 30px;
            }

            .greeting {
                font-size: 18px;
                font-weight: 600;
                margin-bottom: 20px;
                color: #2d3748;
            }

            .message {
                font-size: 16px;
                color: #4a5568;
                margin-bottom: 30px;
                line-height: 1.6;
            }

            .otp-container {
                background: linear-gradient(135deg, #f7fafc 0%, #edf2f7 100%);
                border: 2px dashed #cbd5e0;
                border-radius: 12px;
                padding: 30px;
                text-align: center;
                margin: 30px 0;
            }

            .otp-label {
                font-size: 14px;
                font-weight: 600;
                color: #718096;
                margin-bottom: 12px;
                text-transform: uppercase;
                letter-spacing: 1px;
            }

            .otp-code {
                font-size: 36px;
                font-weight: 800;
                color: #2d3748;
                font-family: 'Courier New', monospace;
                letter-spacing: 8px;
                background: #ffffff;
                padding: 20px 30px;
                border-radius: 8px;
                border: 2px solid #e2e8f0;
                display: inline-block;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
            }

            .warning {
                background: #fef5e7;
                border-left: 4px solid #f6ad55;
                padding: 20px;
                border-radius: 8px;
                margin: 30px 0;
            }

            .warning-icon {
                display: inline-block;
                width: 20px;
                height: 20px;
                background: #f6ad55;
                border-radius: 50%;
                color: white;
                text-align: center;
                line-height: 20px;
                font-size: 12px;
                font-weight: bold;
                margin-right: 12px;
                vertical-align: top;
            }

            .warning-text {
                display: inline-block;
                width: calc(100% - 40px);
                font-size: 14px;
                color: #744210;
                line-height: 1.5;
            }

            .security-notice {
                background: #e6fffa;
                border-left: 4px solid #38b2ac;
                padding: 20px;
                border-radius: 8px;
                margin: 20px 0;
            }

            .security-notice p {
                font-size: 14px;
                color: #234e52;
                margin-bottom: 8px;
            }

            .footer {
                background: #f7fafc;
                padding: 30px;
                text-align: center;
                border-top: 1px solid #e2e8f0;
            }

            .footer p {
                font-size: 14px;
                color: #718096;
                margin-bottom: 8px;
            }

            .footer a {
                color: #667eea;
                text-decoration: none;
            }

            .footer a:hover {
                text-decoration: underline;
            }

            .divider {
                height: 1px;
                background: linear-gradient(to right, transparent, #e2e8f0, transparent);
                margin: 30px 0;
            }

            @media (max-width: 600px) {
                .email-container {
                    margin: 0 10px;
                }

                .header, .content, .footer {
                    padding: 25px 20px;
                }

                .otp-code {
                    font-size: 28px;
                    letter-spacing: 4px;
                    padding: 15px 20px;
                }
            }
        </style>
    </head>
    <body>
    <div style="padding: 40px 20px;">
        <div class="email-container">
            <div class="header">
                <h1>${msg("otpEmailBrandName")}</h1>
                <p>Secure Authentication</p>
            </div>

            <div class="content">
                <#nested>
            </div>

            <div class="footer">
                <p>${msg("otpEmailFooter")}</p>
                <p style="margin-top: 20px; font-size: 12px; color: #a0aec0;">
                    This is an automated message. Please do not reply to this email.
                </p>
            </div>
        </div>
    </div>
    </body>
    </html>
</#macro>