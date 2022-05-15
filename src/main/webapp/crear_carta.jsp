<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>M8 cards</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>

	<div class="contenedor">
		<%
//Array con las todas razas
String razas[] = {"Elfs", "Nans", "Gnom", "Mitjans", "Semi-Orc", "Humans"};

int razasImgenes[] = {0, 1, 2, 3, 4, 5};

int razaRandom = (int)(Math.random() *razas.length);

int daupv = (int)(Math.random() * 8 + 1);
int daupm = (int)(Math.random() * 4 + 1);

%>

		<%! public int getValor() {
	
	int valor = 0;
	
	int daus[] = {0, 0, 0, 0};
	
	for (int i=0; i<daus.length; i++) {
		
		daus[i] = (int)(Math.random() * 6 + 1);
		
	}
	
	Arrays.sort(daus);
	
	for (int i=1; i<daus.length; i++) {
		
		valor = valor + daus[i];
		
	}
	
	return valor;
	
}
%>

		<%!

public int modFUE (int a) {
	
	int mod = 0;
	switch (a) {
	
	case 0: break;
	case 1: break;
	case 2:
		mod = -2;
		break;
	case 3:
		mod = -2;
		break;		
	case 4:
		mod = +2;
		break;	
	}
	return mod;
	
}

public int modDES (int a) {
	
	int mod = 0;
	switch (a) {
	
	case 0:
		mod = +2;
		break;
	case 1:
		break;
	case 2:
		break;
	case 3:
		mod = +2;
		break;		
	case 4:
		break;	
	}
	return mod;
	
}

public int modCON (int a) {
	
	int mod = 0;
	switch (a) {
	
	case 0:
		mod = -2;
		break;
	case 1:
		mod = +2;
		break;
	case 2:
		mod = +2;
		break;
	case 3:
		break;		
	case 4:
		break;	
	}
	return mod;
	
}

public int modINT (int a) {
	
	int mod = 0;
	switch (a) {
	
	case 0:
		mod = +2;
		break;
	case 1:
		break;
	case 2:
		break;
	case 3:
		break;		
	case 4:
		mod = -2;
		break;	
	}
	return mod;
	
}

public int modSAB (int a) {
	
	int mod = 0;
	switch (a) {
	
	case 0:
		break;
	case 1:
		mod = +2;
		break;
	case 2:
		break;
	case 3:
		break;
	case 4:
		break;
	
	}
	return mod;
	
}

public int modCAR (int a) {
	
	int mod = 0;
	switch (a) {
	
	case 0:
		break;
	case 1:
		mod = -2;
		break;
	case 2:
		mod = +2;
		break;
	case 3:
		break;
	case 4:
		mod = -2;
		break;
	
	}
	return mod;
	
}

%>


		<% // Crear una aplicacion con jps + html %>

		<header>
			<h1>02 Instal·lació i primera aplicació Tomcat</h1>
		</header>
		<nav>
			<ul>
				<li><a href="index.jsp" class="current">Inicio</a></li>
			</ul>
		</nav>
		<br />

		<!-- tabla html -->
		<div>
			<table>
				<thead>
					<!-- El nombre de la raza  -->
					<tr>
						<th colspan="5">
							<% out.print(razas[razaRandom]);%>

						</th>
					</tr>

					<!--  La cabecera del la tabla -->
					<tr>
						<th></th>
						<th>Carac.</th>
						<th>Valor Base</th>
						<th>Mod.</th>
						<th>Valor Final</th>
					</tr>
				</thead>
				<!--  Footer de la tabla -->
				<tfoot>
					<tr>
						<th colspan="5">Jose mejia</th>
					</tr>
				</tfoot>

				<!--  Es el cuerpo de la tabla -->
				<tbody>
					<tr>
						<td rowspan="9"><img
							src="<%out.print(razasImgenes[razaRandom]);%>.png"
							alt="<%out.print(razas[razaRandom]);%>"
							title="<%out.print(razas[razaRandom]);%>" />
						<td><i>FUE:</i></td>
						<td>
							<%int FUE = getValor(); out.print(FUE);%>
						</td>
						<td>
							<%out.print(modFUE(razaRandom));%>
						</td>
						<td>
							<%out.print(FUE + modFUE(razaRandom));%>
						</td>
					</tr>
					<tr>
						<td>DES:</td>
						<td>
							<%int DES = getValor(); out.print(DES);%>
						</td>
						<td>
							<%out.print(modDES(razaRandom));%>
						</td>
						<td>
							<%out.print(DES + modDES(razaRandom));%>
						</td>
					</tr>
					<tr>
						<td>CON:</td>
						<td>
							<%int CON = getValor(); out.print(CON);%>
						</td>
						<td>
							<%out.print(modCON(razaRandom));%>
						</td>
						<td>
							<%out.print(CON + modCON(razaRandom));%>
						</td>
					</tr>
					<tr>
						<td>INT:</td>
						<td>
							<%int INT = getValor(); out.print(INT);%>
						</td>
						<td>
							<%out.print(modINT(razaRandom));%>
						</td>
						<td>
							<%out.print(INT + modINT(razaRandom));%>
						</td>
					</tr>
					<tr>
						<td>SAB:</td>
						<td>
							<%int SAB = getValor(); out.print(SAB);%>
						</td>
						<td>
							<%out.print(modSAB(razaRandom));%>
						</td>
						<td>
							<%out.print(SAB + modSAB(razaRandom));%>
						</td>
					</tr>
					<tr>
						<td>CAR:</td>
						<td>
							<%int CAR = getValor(); out.print(CAR);%>
						</td>
						<td>
							<%out.print(modCAR(razaRandom));%>
						</td>
						<td>
							<%out.print(CAR + modCAR(razaRandom));%>
						</td>
					</tr>
					<tr>
						<td>P.V(<%int PV = CON * daupv; out.print(PV);%>)
						</td>
						<td colspan=3>
							<table
								style="width:<%if (PV > 100) {out.print(100);} else {out.print(PV);}%>%; background-color: red; height: 6px; border-style: none;"></table>
						</td>
					</tr>
					<tr>
						<td>P.M(<%int PMM = INT + SAB / 2; PMM = (int)(Math.floor(PMM)); int PM = PMM * daupm; out.print(PM);%>)
						</td>
						<td colspan=3><table
								style="width:<%if (PM > 100) {out.print(100);} else {out.print(PM);}%>%; background-color: blue; height: 6px; border-style: none;"></table></td>
					</tr>
				</tbody>
			</table>
			<br/>
			<form method="post" action="insert_bd.jsp">

				<fieldset>
					<legend>Datos Carta</legend>
						<label for="nom">Nombre de la carta</label><br /> 
					    <input type="text" name="nom" id="nombre" placeholder="Nombre de la carta"/><br/> 
						<input type="hidden" name="race" value="<% out.print(razas[razaRandom]);%>"/>
						<input type="hidden" name="picture" value="img/<%out.print(razasImgenes[razaRandom]);%>.png"/> 
						<input type="hidden" name="fue" value="<%out.print(FUE + modFUE(razaRandom));%>"/> 
						<input type="hidden" name="des" value="<%out.print(DES + modDES(razaRandom));%>"/> 
						<input type="hidden" name="con" value="<%out.print(CON + modCON(razaRandom));%>"/> 
						<input type="hidden" name="int" value="<%out.print(INT + modINT(razaRandom));%>"/> 
						<input type="hidden" name="sab" value="<%out.print(SAB + modSAB(razaRandom));%>"/> 
						<input type="hidden" name="car" value="<%out.print(CAR + modCAR(razaRandom));%>"/> 
						<input type="hidden" name="pv" value="<%out.print(PV); %>"/> 
						<input type="hidden" name="pm" value="<%out.print(PM); %>"/>


				</fieldset>
			<input type='submit' value='guardar carta'/>
			<a class="btn_carta" href="paginacio.jsp"><button>Ver Cartas</button></a>
			</form>
		</div>
	</div>
</body>
</html>