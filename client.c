private void button1_Click(object sender, EventArgs e)
        {
            // preguntar numero de servei
            string mensaje = "6/" + textbox_partida.Text;

            byte[] msg = System.Text.Encoding.ASCII.GetBytes(mensaje);
            server.Send(msg);

            //get answer
            byte[] msg2 = new byte[80];
            server.Receive(msg2);
            mensaje = Encoding.ASCII.GetString(msg2).Split('\0')[0];

            CountLbl.Text= mensaje;
        }