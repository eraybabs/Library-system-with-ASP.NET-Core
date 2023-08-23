using Microsoft.AspNetCore.Identity.UI.Services;

namespace Belediye_Kutuphane_Sistemi.Utility
{
    public class EmailSender : IEmailSender

    {

        public Task SendEmailAsync(string email, string subject, string htmlMessage)

        {

            // Buraya e-mail gönderme işlemleri eklenebilir.

            return Task.CompletedTask;

        }

    }
}
