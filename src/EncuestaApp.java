import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EncuestaApp extends JFrame {
    private Connection conexion;
    private JTextField respuestaField;
    private JLabel preguntaLabel;
    private int preguntaActual = 0;


    private String[] preguntas = {
            "¿Cuál es tu videojuego favorito?",
            "¿Cuál es tu consola favorita?",
            "¿Qué deporte te gusta más?",
            "¿Qué ciudad te gustaría visitar?"
    };


    public EncuestaApp() {
        super("Encuesta Interactiva");


        setSize(400, 200);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(new BorderLayout());


        preguntaLabel = new JLabel(preguntas[preguntaActual]);
        respuestaField = new JTextField();
        JButton botonEnviar = new JButton("Enviar Respuesta");


        JPanel panelCentral = new JPanel();
        panelCentral.setLayout(new GridLayout(2, 1));
        panelCentral.add(preguntaLabel);
        panelCentral.add(respuestaField);


        add(panelCentral, BorderLayout.CENTER);
        add(botonEnviar, BorderLayout.SOUTH);


        conectarBaseDatos();


        botonEnviar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                guardarRespuesta();
            }
        });
    }

    private void conectarBaseDatos() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/EncuestasDB";
            String usuario = "root";
            String contraseña = "2003";

            conexion = DriverManager.getConnection(url, usuario, contraseña);
            System.out.println("Conexión exitosa a la base de datos");

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error al conectar con la base de datos");
            e.printStackTrace();
        }
    }


    private void guardarRespuesta() {
        String respuesta = respuestaField.getText();

        if (!respuesta.isEmpty()) {
            try {
                String consulta = "INSERT INTO respuestas (pregunta, respuesta) VALUES (?, ?)";
                PreparedStatement statement = conexion.prepareStatement(consulta);
                statement.setString(1, preguntas[preguntaActual]);
                statement.setString(2, respuesta);

                statement.executeUpdate();
                System.out.println("Respuesta insertada correctamente");

                // Limpiar el campo de texto
                respuestaField.setText("");

                // Pasar a la siguiente pregunta
                preguntaActual++;

                if (preguntaActual < preguntas.length) {
                    preguntaLabel.setText(preguntas[preguntaActual]);
                } else {
                    JOptionPane.showMessageDialog(this, "¡Encuesta completada! Gracias por participar.");
                    desconectarBaseDatos();
                    System.exit(0);
                }
            } catch (SQLException e) {
                System.out.println("Error al insertar datos");
                e.printStackTrace();
            }
        } else {
            JOptionPane.showMessageDialog(this, "Por favor, ingrese una respuesta.");
        }
    }


    private void desconectarBaseDatos() {
        try {
            if (conexion != null && !conexion.isClosed()) {
                conexion.close();
                System.out.println("Conexión cerrada");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                EncuestaApp app = new EncuestaApp();
                app.setVisible(true);
            }
        });
    }
}
