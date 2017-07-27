//inclua as classes abaixo
using System.Net.Mail;
using System.Net;
using System.Text;

//crio objeto respons�vel pela mensagem de email
MailMessage objEmail = new MailMessage();

//rementente do email
objEmail.From = new MailAddress("email@seusite.com.br");

//email para resposta(quando o destinat�rio receber e clicar em responder, vai para:)
objEmail.ReplyTo = new MailAddress("email@seusite.com.br");

//destinat�rio(s) do email(s). Obs. pode ser mais de um, pra isso basta repetir a linha
//abaixo com outro endere�o
objEmail.To.Add("destinatario@provedor.com.br");

//se quiser enviar uma c�pia oculta pra algu�m, utilize a linha abaixo:
objEmail.Bcc.Add("oculto@provedor.com.br");

//prioridade do email
objEmail.Priority = MailPriority.Normal;

//utilize true pra ativar html no conte�do do email, ou false, para somente texto
objEmail.IsBodyHtml = true;

//Assunto do email
objEmail.Subject = "Assunto";

//corpo do email a ser enviado
objEmail.Body = "Conte�do do email. Se ativar html, pode utilizar cores, fontes, etc.";

//codifica��o do assunto do email para que os caracteres acentuados serem reconhecidos.
objEmail.SubjectEncoding = Encoding.GetEncoding("ISO-8859-1");

//codifica��o do corpo do emailpara que os caracteres acentuados serem reconhecidos.
objEmail.BodyEncoding = Encoding.GetEncoding("ISO-8859-1");

//cria o objeto respons�vel pelo envio do email
SmtpClient objSmtp = new SmtpClient();

//endere�o do servidor SMTP(para mais detalhes leia abaixo do c�digo)
objSmtp.Host = "smtp.seuservidor.com.br;"

//para envio de email autenticado, coloque login e senha de seu servidor de email
//para detalhes leia abaixo do c�digo
objSmtp.Credentials = new NetworkCredential("login", "senha");

//envia o email
objSmtp.Send(objEmail);