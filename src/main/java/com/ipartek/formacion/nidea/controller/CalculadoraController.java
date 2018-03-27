package com.ipartek.formacion.nidea.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.nidea.pojo.Alert;

/**
 * Servlet implementation class CalculadoraController
 */
public class CalculadoraController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RequestDispatcher dispatch;

	public static final int OP_SUMAR = 0;
	public static final int OP_RESTAR = 1;
	public static final int OP_MULTIPLICAR = 2;
	public static final int OP_DIVIDIR = 3;

	float num1 = 0;
	float num2 = 0;
	int option = OP_SUMAR;
	float resul = 0f;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Nos llaman a través de un enlace, peticion GET

		request.getRequestDispatcher("views/calculadora/index.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Nos llaman a través de un Formulario con method="post"

		try {
			// recoger los parametros
			getParameters(request);
			calcular();

			// Enviar atributos a la Vista (jsp)
			request.setAttribute("resultado", resul);
			dispatch = request.getRequestDispatcher("views/calculadora/resultado.jsp");
		}

		catch (NumberFormatException e) {
			e.printStackTrace();
			request.setAttribute("alert", new Alert("Por favor introduce un número válido", Alert.TIPO_WARNING));
			dispatch = request.getRequestDispatcher("views/calculadora/index.jsp");

		}

		catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("alert",
					new Alert("Disculpe las molestias, error sin contemplar", Alert.TIPO_WARNING));
			dispatch = request.getRequestDispatcher("views/calculadora/index.jsp");

		}

		finally {
			dispatch.forward(request, response);
		}
	}

	private void calcular() {
		switch (option) {
		case OP_SUMAR:
			resul = num1 + num2;
			break;
		case OP_RESTAR:
			resul = num1 - num2;
			break;
		case OP_MULTIPLICAR:
			resul = num1 * num2;
			break;
		case OP_DIVIDIR:
			resul = num1 / num2;
			break;
		}

	}

	private void getParameters(HttpServletRequest request) {

		String snum1 = request.getParameter("num1");
		snum1 = snum1.replaceAll(",", ".");
		String snum2 = request.getParameter("num2");
		snum2 = snum2.replaceAll(",", ".");

		String soperacion = request.getParameter("operacion");

		num1 = Float.parseFloat(snum1);
		num2 = Float.parseFloat(snum2);
		option = Integer.parseInt(soperacion);
		resul = 0f;

	}

}
