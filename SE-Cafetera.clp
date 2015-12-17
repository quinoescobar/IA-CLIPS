
;;;======================================================
;;;   Sistema Experto Cafetería
;;;
;;;     Este SE recomienda que tipo de bebida tomar
;;;     de acuerdo a los datos ingresados
;;;
;;;     CLIPS Version 6.3
;;;
;;;     Inteligencia artificial-ULL-2015
;;;     Erik Andréas Barreto de Vera
;;;     José Joaquín Escobar Gómez
;;;     Grado Ingeniería Informática
;;;======================================================


;; Datos de cada bebida:
;; 	Precio
;; 	Cantidad
;;	Calorias
;;	Tamanho
;;	Comidas


(defclass Bebida "Clase con la información de cada bebida"
	(is-a USER)
;+		(comment "concreta para hacer instancias.")
	(role concrete)
	(single-slot Personal
;+		(comment "Si es el personal.")
		(type INTEGER)
		(allowed-values 0 1)
;+		(cardinality 0 1)
		(default 0)
		(create-accessor read-write))
	(single-slot Precio
;+		(comment "Precio de la bebida.")
		(type INTEGER)
		(allowed-values 150 200 250 300 350 400 450 500 550 600 )
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Cantidad
;+		(comment "Cantidad en CC de la bebida.")
		(type INTEGER)
		(allowed-values 30 50 75 90 100 200 400)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Calorias
;+		(comment "Calorias de cada bebida.")
		(type INTEGER)
		(range 0 300)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tamanho
;+		(comment "Tamanho de la bebida .")
		(type INTEGER)
		(allowed-values 1 2 3 4)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Comentario
		(type STRING))
	(multislot Comidas
;+		(comment "Acompañamientos para la bebida")
		(type STRING)
		(create-accessor read-write)))


(defclass Libre
  (is-a Bebida)
  (role concrete)
  (single-slot Comentario
  	(type STRING)
    (default "Esta bebida esta libre de alcohol.")))

(defclass Gaseosa
	(is-a Bebida)
	(role concrete)
	(single-slot Comentario
		(type STRING)
	  (default "Esta bebida gaseosa es libre de alcohol.")))

(defclass Zumo
	(is-a Bebida)
	(role concrete)
	(single-slot Comentario
		(type STRING)
	  (default "Este zumo es de fruta natural y esta libre de alcohol.")))

(defclass AlcoholicaPura
	(is-a Bebida)
	(role concrete)
	(single-slot Comentario
		(type STRING)
	  (default "Esta bebida es alcoholica, nivel alto de alcohol.")))

(defclass AlcoholicaSuave
	(is-a Bebida)
	(role concrete)
	(single-slot Comentario
		(type STRING)
	  (default "Esta bebida es alcoholica, nivel bajo de alcohol.")))

;; Definicion de instancias intancelist

(definstances Bebidas
(Agua of Libre (Precio 200)(Cantidad 100)(Calorias 0)(Tamanho 2)(Comidas "Todas"))
(AguaArdiente of AlcoholicaPura (Precio 300)(Cantidad 100)(Calorias 280)(Tamanho 1)(Comidas "Tapas" "Manies" "Ninguna"))
(AguaTonica of Libre (Precio 200)(Cantidad 100)(Calorias 39)(Tamanho 2)(Comidas "Todas"))
(Cerveza of AlcoholicaSuave (Precio 250)(Cantidad 200)(Calorias 95)(Tamanho 1)(Comidas "Tpdas" "Ninguna" "Tapas" "Manies"))
(Cocacola of Gaseosa (Precio 200)(Cantidad 200)(Calorias 41)(Tamanho 2)(Comidas "Todas" "Ninguna"))
(Cognac of AlcoholicaPura (Precio 400)(Cantidad 50)(Calorias 122)(Tamanho 4)(Comidas "Ninguna"))
(CognacFrances of AlcoholicaPura (Precio 600)(Cantidad 50)(Calorias 190)(Tamanho 4)(Comidas "Ninguna"))
(CremaCacao of AlcoholicaSuave (Precio 400)(Cantidad 30)(Calorias 90)(Tamanho 4)(Comidas "Ninguna" "DespuesComida"))
(CremaMenta of AlcoholicaSuave (Precio 350)(Cantidad 30)(Calorias 90)(Tamanho 4)(Comidas "Ninguna" "DespuesComida"))
(Champanha of AlcoholicaSuave (Precio 500)(Cantidad 100)(Calorias 700)(Tamanho 3)(Comidas "Cenas" "Ninguna" "Celebraciones"))
(Fanta of Gaseosa (Precio 200)(Cantidad 100)(Calorias 60)(Tamanho 2)(Comidas "Todas"))
(Ginebra of AlcoholicaPura (Precio 400)(Cantidad 30)(Calorias 65)(Tamanho 4)(Comidas "Cenas" "Ninguna"))
(GingerAle of Gaseosa (Precio 200)(Cantidad 100)(Calorias 39)(Tamanho 1)(Comidas "Todas"))
(Jerez of AlcoholicaPura (Precio 250)(Cantidad 100)(Calorias 127)(Tamanho 3)(Comidas "Cenas" "DespuesComida"))
(JugoFrutaNatural of Zumo (Precio 200)(Cantidad 200)(Calorias 100)(Tamanho 1)(Comidas "Todas" "Ninguna"))
(JugoEnPolvo of Libre (Precio 150)(Cantidad 100)(Calorias 37)(Tamanho 2)(Comidas "Todas" "Ninguna"))
(LicorAmargo of AlcoholicaSuave (Precio 300)(Cantidad 50)(Calorias 174)(Tamanho 4)(Comidas "Aperitivo" "Ninguna"))
(LicorDulce of AlcoholicaSuave (Precio 300)(Cantidad 50)(Calorias 191)(Tamanho 4)(Comidas "Aperitivo" "Ninguna"))
(Limonada of Libre (Precio 250)(Cantidad 400)(Calorias 100)(Tamanho 1)(Comidas "Todas" "Ninguna"))
(Manhattan of AlcoholicaPura (Precio 450)(Cantidad 90)(Calorias 160)(Tamanho 3)(Comidas "Aperitivo" "Ninguna" "DespuesComida"))
(Martini of AlcoholicaPura (Precio 450)(Cantidad 75)(Calorias 140)(Tamanho 4)(Comidas "Aperitivo" "Ninguna"))
(MontainDew of Gaseosa (Precio 200)(Cantidad 100)(Calorias 36)(Tamanho 1)(Comidas "Todas"))
(Naranja of Zumo (Precio 250)(Cantidad 200)(Calorias 90)(Tamanho 1)(Comidas "Todas" "Ninguna"))
(Nectar of Libre (Precio 350)(Cantidad 100)(Calorias 73)(Tamanho 2)(Comidas "Todas" "Ninguna"))
(Oporto of AlcoholicaPura (Precio 350)(Cantidad 30)(Calorias 45)(Tamanho 4)(Comidas "Ninguna" "DespuesComida"))
(OrangeCrush of Gaseosa (Precio 250)(Cantidad 100)(Calorias 52)(Tamanho 2)(Comidas "Todas" "Ninguna"))
(PepsiCola of Gaseosa (Precio 150)(Cantidad 100)(Calorias 43)(Tamanho 2)(Comidas "Todas" "Ninguna"))
(PepsiLight of Gaseosa (Precio 150)(Cantidad 100)(Calorias 1)(Tamanho 2)(Comidas "Todas" "Ninguna"))
(Pera of Zumo (Precio 250)(Cantidad 200)(Calorias 82)(Tamanho 1)(Comidas "Todas" "Ninguna"))
(Ron of AlcoholicaPura (Precio 350)(Cantidad 100)(Calorias 181)(Tamanho 1)(Comidas "Ninguna" "DespuesComida"))
(Sprite of Gaseosa (Precio 200)(Cantidad 100)(Calorias 41)(Tamanho 2)(Comidas "Todas" "Ninguna"))
(SpriteLight of Gaseosa (Precio 200)(Cantidad 100)(Calorias 1)(Tamanho 2)(Comidas "Todas" "Ninguna"))
(Tomate of Zumo (Precio 250)(Cantidad 200)(Calorias 50)(Tamanho 1)(Comidas "Todas" "Ninguna"))
(TomCollins of AlcoholicaPura (Precio 350)(Cantidad 100)(Calorias 250)(Tamanho 1)(Comidas "Aperitivo" "Ninguna"))
(VermouthDulce of AlcoholicaSuave (Precio 450)(Cantidad 30)(Calorias 45)(Tamanho 4)(Comidas "Aperitivo" "DespuesComida"))
(VermouthSeco of AlcoholicaSuave (Precio 450)(Cantidad 30)(Calorias 35)(Tamanho 4)(Comidas "Aperitivo" "DespuesComida"))
(VinoBlanco of AlcoholicaSuave (Precio 350)(Cantidad 100)(Calorias 84)(Tamanho 3)(Comidas "Todas" "Ninguna" "DespuesComida"))
(VinoDulce of AlcoholicaSuave (Precio 350)(Cantidad 100)(Calorias 158)(Tamanho 3)(Comidas "Todas" "Ninguna" "DespuesComida"))
(VinoTinto of AlcoholicaSuave (Precio 350)(Cantidad 100)(Calorias 70)(Tamanho 3)(Comidas "Todas" "Ninguna" "DespuesComida"))
(Vodka of AlcoholicaPura (Precio 350)(Cantidad 50)(Calorias 75)(Tamanho 4)(Comidas "Ninguna" "DespuesComida"))
(Whiskey of AlcoholicaPura (Precio 500)(Cantidad 100)(Calorias 20)(Tamanho 1)(Comidas "Ninguna" "Aperitivo" "DespuesComida"))
(Zanahoria of Zumo (Precio 250)(Cantidad 200)(Calorias 80)(Tamanho 1)(Comidas "Todas" "Ninguna"))
(Usuario of Bebida (Precio 600)(Personal 1)(Cantidad 200)(Calorias 43)(Tamanho 1))
)

; All of the predefined system classes (see section 9.2) belong to the MAIN module.
; However, it is not necessary to import or export the system classes
; they are always in scope. Discounting the previous exception, the predefined MAIN module does not import or export any constructs.
; However, unlike other modules, the MAIN module can be redefined once after startup or a clear command.
; Para indicar que queremos sean visibles, exporta todas las construcciones del MAIN
(defmodule MAIN (export ?ALL))

(deftemplate mezclar
  (slot fuerte)
  (slot libre)
)

;;Definicion de hechos no  ordenados: Indicamos que bebidas se pueden mezclar con otras
; por un nombre
(deffacts mezclas
  (mezclar (fuerte Whiskey) (libre Agua))
  (mezclar (fuerte Vodka) (libre Agua))
  (mezclar (fuerte Ginebra) (libre Tonica))
  (mezclar (fuerte Vodka) (libre Tonica))
  (mezclar (fuerte Martini) (libre Tonica))
  (mezclar (fuerte Whiskey) (libre Cocacola))
  (mezclar (fuerte Ron) (libre Cocacola))
  (mezclar (fuerte Ron) (libre Fanta))
  (mezclar (fuerte Ron) (libre Sprite))
  (mezclar (fuerte Ron) (libre SpriteLight))
  (mezclar (fuerte Ron) (libre Agua))
	(mezclar (fuerte Whiskey) (libre Sprite))
  (mezclar (fuerte Vodka) (libre Fanta))
  (mezclar (fuerte Vodka) (libre Sprite))
  (mezclar (fuerte Vodka) (libre Naranja))
  (mezclar (fuerte Vodka) (libre OrangeCrush))
)

;;Definición de hechos ordenados: Indicamos que bebidas son buenas para por la noche/botellon
; que pueden ser referenciados por la posición que ocupan dentro del hecho

(deffacts botellon
  (elegir-botellon Cerveza)
  (elegir-botellon Cocacola)
  (elegir-botellon Fanta)
  (elegir-botellon GingerAle)
	(elegir-botellon OrangeCrush)
  (elegir-botellon Pepsi)
  (elegir-botellon Ron)
	(elegir-botellon Sprite)
  (elegir-botellon Vodka)
  (elegir-botellon Whiskey)
)

;; Hecho para almacenar si el usuario quiere saber las mezclas o no y las bebidas de botellon

(deffacts opciones
	(duda desconocido)
)
;;Función que imprime todos los datos de una bebida

(deffunction imprimir (?drink)
	(printout t ------------------------------------------------ crlf)
	(printout t "Bebida: " ?drink crlf)
	(printout t "Precio: " (send ?drink get-Precio) crlf)
	(printout t "Cantidad: " (send ?drink get-Cantidad) crlf)
	(printout t "Calorias: " (send ?drink get-Calorias) crlf)
	(printout t "Tamanho: " (send ?drink get-Tamanho) crlf)
	(printout t "Comidas: " (send ?drink get-Comidas) crlf)
	(printout t (send ?drink get-Comentario) crlf)
	(printout t ------------------------------------------------ crlf crlf)
)


;;Función para preguntar al usuario

(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
(while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      )
?answer)


;;Definimos reglas y preguntas

(defrule determinar-precio
 (declare(salience 10))
=>
  (bind ?variable (ask-question "Cuanto esta dispuesto a gastar? (150/200/250/300/350/400/450/500/600) " 150 200 250 300 350 400 450 500 600))
    (switch ?variable
	(case 150 then (modify-instance Usuario (Precio 150)))
	(case 200 then (modify-instance Usuario (Precio 200)))
	(case 250 then (modify-instance Usuario (Precio 250)))
	(case 300 then (modify-instance Usuario (Precio 300)))
	(case 350 then (modify-instance Usuario (Precio 350)))
  (case 400 then (modify-instance Usuario (Precio 400)))
	(case 450 then (modify-instance Usuario (Precio 450)))
	(case 500 then (modify-instance Usuario (Precio 500)))
	(case 600 then (modify-instance Usuario (Precio 600)))
  )
)

(defrule determinar-tamanho
 (declare(salience 10))
=>
  (bind ?variable (ask-question "En que recipiente desea la bebida? (VASO/VASITO/COPA/COPITA) " VASO VASITO COPA COPITA))
    (switch ?variable
	(case VASO then (modify-instance Usuario (Tamanho 1)))
	(case VASITO then (modify-instance Usuario (Tamanho 2)))
	(case COPA then (modify-instance Usuario (Tamanho 3)))
	(case COPITA then (modify-instance Usuario (Tamanho 4)))
  )
)

(defrule determinar-calorias
 (declare(salience 10))
=>
  (bind ?variable (ask-question "Ponga un limite maximo de calorias en la bebida? (0/50/100/150/200/250/300) " 0 50 100 150 200 250 300 ))
    (switch ?variable
	(case 0 then (modify-instance Usuario (Calorias 0)))
	(case 50 then (modify-instance Usuario (Calorias 50)))
	(case 100 then (modify-instance Usuario (Calorias 100)))
	(case 150 then (modify-instance Usuario (Calorias 150)))
	(case 200 then (modify-instance Usuario (Calorias 200)))
	(case 250 then (modify-instance Usuario (Calorias 250)))
	(case 300 then (modify-instance Usuario (Calorias 300)))
  )
)
;;Buscamos en todas las instancias cuales pueden ser del gusto del usuario
(defrule buscar-Match
  (declare (salience 5))
=>
  (printout t "Bebidas perfectas para usted:" crlf)
  (do-for-all-instances ((?drink Bebida))
    (and
      (= ?drink:Precio (send [Usuario] get-Precio))
      (<= ?drink:Tamanho (send [Usuario] get-Tamanho))
			(<= ?drink:Calorias (send [Usuario] get-Calorias))
      (<> ?drink:Personal (send [Usuario] get-Personal))
    )
  (imprimir ?drink)
  )
)

;;Buscamos en las instancias para ver si hay alguna que cumpla con lo que el usuario quiere cercano a los datos ingresados
;;Preguntamos si quiere ver las mezclas de bebidas recomendadas

(defrule buscar-Near
  (declare (salience 4))
=>
  (printout t "Bebidas similares a los datos ingresados:" crlf)
  (do-for-all-instances ((?drink Bebida))
    (and
      (<= ?drink:Precio (send [Usuario] get-Precio))
      (>= ?drink:Tamanho (send [Usuario] get-Tamanho))
			(<= ?drink:Calorias (send [Usuario] get-Calorias))
      (<> ?drink:Personal (send [Usuario] get-Personal))
    )
  (imprimir ?drink)
  )
  (printout t crlf)
  (bind ?variable (ask-question "Le gustaria conocer que mezclas de bebidas son buenas, que bebidas se usan en botellon, ambas o ninguna? (Mezclas/Botellon/Todo/Ninguna): " Mezclas Botellon Todo Ninguna))
  (switch ?variable
	(case Mezclas then (assert (duda Mezclas)))
	(case Botellon then (assert (duda Botellon)))
	(case Todo then (assert (duda Todo)))
	(case Ninguna then (assert (duda Ninguna)))
  )
)

;;Enuinciado para las mezclas
(defrule cabezamezclas
	(declare (salience 3))
	(or
		(duda Mezclas)
		(duda Todo)
	)
=>
	(printout t "Bebidas que se pueden mezclar : " crlf))

;;Imprimimos mezclas
(defrule mixes
	(declare (salience 2))
	(and
		(or
			(duda Mezclas)
			(duda Todo)
		)
		(mezclar (fuerte ?x) (libre ?y))
	)
=>
	(printout t "   "?x " + " ?y crlf))

;;Enunciado para las bebidas de botellon

(defrule cabezabotellon
	(declare (salience 1))
	(or
		(duda Botellon)
		(duda Todo)
	)
=>
	(printout t crlf "Bebidas buenas para botellon :" crlf)
)

;;Imprimimos Splitpusher
(defrule nocturnas
	(declare (salience 0))
	(and
		(or
			(duda Botellon)
			(duda Todo)
		)
		(elegir-botellon ?x)
	)
=>
	(printout t "   " ?x crlf)
)
