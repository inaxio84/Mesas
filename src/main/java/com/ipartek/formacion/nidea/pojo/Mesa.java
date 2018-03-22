//1.definicion paquete package
package com.ipartek.formacion.nidea.pojo;
//2. imports => ahora mismo no tenemos ninguno

//3. definicion de la Clase
public class Mesa {
	// precio en €
	public static final int PRECIO_PATA = 1;
	public static final int PRECIO_M2 = 5;
	public static final int PRECIO_MATERIAL_MADERA = 4;
	public static final int PRECIO_MATERIAL_ACERO = 6;
	public static final int PRECIO_MATERIAL_ALUMINIO = 5;
	public static final int PRECIO_MATERIAL_PLASTICO = 2;
	public static final int PRECIO_COLOR_CUSTOM = 23;
	public static final String PRECIO_COLOR_NAME_CUSTOM = "custom";
	public static final int MATERIAL_MADERA = 1;
	public static final int MATERIAL_ACERO = 2;
	public static final int MATERIAL_ALUMINIO = 3;
	public static final int MATERIAL_PLASTICO = 4;
	// 4. definicion de Atributos (siempre van a ser private)
	private int numeroPatas;
	private int dimension; // m2
	private String color;
	private int material;

	/*
	 * 5. Metodos 5.1 constructore 5.2 getters & setters 5.3 constructores
	 */
	public Mesa() {
		// llamar siempre a super
		super();
		// inicializar los atributos
		this.numeroPatas = 4;
		this.dimension = 1;
		this.color = "blanco";
		this.material = MATERIAL_MADERA;
	}

	public Mesa(int material) {
		this();// llamar siempre al constructor por defecto
		this.material = material;
	}

	// Ejemplo de constructor al que le pasamos material y dimension
	public Mesa(int material, int dimension) {
		this(material);// llama al constructor anterior pasandole material
		this.dimension = dimension;
	}

	// Ejemplo de constructor al que le pasamos todos los atributos public
	Mesa(int numeroPatas, int dimension, String color, int material) {
		this(material, dimension);// llama al constructor anterior pasandole material y dimension
		this.setNumeroPatas(numeroPatas);
		this.color = color;

	}

	public int getDimension() {
		return dimension;
	}

	public void setDimension(int dimension) {
		this.dimension = dimension;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getMaterial() {
		return material;
	}

	public void setMaterial(int material) {
		this.material = material;
	}

	/**
	 *
	 * @param numeroPatas
	 *            int en caso de ser negativo se inicializa a 0
	 */

	public int getNumeroPatas() {
		return this.numeroPatas;
	}

	public void setNumeroPatas(int numeroPatas) {

		this.numeroPatas = (numeroPatas <= 0) ? 1 : numeroPatas;
	}

	@Override
	public String toString() {
		return "Mesa [numeroPatas=" + numeroPatas + ", dimension=" + dimension + ", color=" + color + ", material="
				+ material + "]";
	}

	/**
	 * Calculamos el precio en funcion de los materiales usados
	 * 
	 * @see consultar todas las constantes definidas para los precios
	 * @param numeroPatas
	 * @param dimension
	 * @param color
	 * @param material
	 * @return int precio en €
	 */
	public int getPrecio() {
		int resul = 0;
		int precio_material = 0;
		switch (this.material) {
		case MATERIAL_MADERA:
			precio_material = PRECIO_MATERIAL_MADERA;
			break;
		case MATERIAL_ACERO:
			precio_material = PRECIO_MATERIAL_ACERO;
			break;
		case MATERIAL_ALUMINIO:
			precio_material = PRECIO_MATERIAL_ALUMINIO;
			break;
		case MATERIAL_PLASTICO:
			precio_material = PRECIO_MATERIAL_PLASTICO;
			break;

		}
		if (this.color.equals(PRECIO_COLOR_NAME_CUSTOM)) {
			resul = (this.numeroPatas * PRECIO_PATA) + (this.dimension * PRECIO_M2) + PRECIO_COLOR_CUSTOM
					+ (precio_material);
		} else {
			resul = (this.numeroPatas * PRECIO_PATA) + (dimension * PRECIO_M2) + (precio_material);
		}

		return resul;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((color == null) ? 0 : color.hashCode());
		result = prime * result + dimension;
		result = prime * result + material;
		result = prime * result + numeroPatas;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Mesa other = (Mesa) obj;
		if (color == null) {
			if (other.color != null)
				return false;
		} else if (!color.equals(other.color))
			return false;
		if (dimension != other.dimension)
			return false;
		if (material != other.material)
			return false;
		if (numeroPatas != other.numeroPatas)
			return false;
		return true;
	}

}
