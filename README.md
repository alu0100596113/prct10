# Matriz

### Creación de la estructura de la Gema

Comando para generar la jerarquía y ficheros de la gema:

`$ bundle gem Matriz`

### Estructura del repositorio inicial

```	
$ tree

.
└── Matriz
	├── Gemfile
	├── lib
	│   ├── Matriz
	│   │   └── version.rb
	│   └── Matriz.rb
	├── LICENSE.txt
	├── Matriz.gemspec
	├── Rakefile
	└── README.md
```

### Organización del trabajo

1. Se creará una clase Matriz tal y como se tenía en la práctica anterior
2. Se creará una clase hija de Matriz, clase Martiz_Dispersa

	`class Matriz_Dispersa < Matriz` 
3. En Matriz_Dispersa se redefinirán los métodos para trabajar con Matrices.


##Ampliación de la jerarquía

1. Guardfile
2. .travis.yml
3. Dependencias:

```
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
```

##Estructura de la clase Matriz

###Variables y métodos

```ruby
	def initialize(array)

	#recibe un solamente un array

	def +(other)
	def -(other)
	def *(other)
	
	#reciben una matriz y retorna una nueva matriz con el resultado

	def coerce(something)

	#recibe un objeto y devuelve un array:
	#[objeto,self]
```

##Estructura de la clase Matriz_Dispersa

###Variables y métodos

```ruby
	def initialize(array)

	#recibe un solamente un array

	def +(other)
	def -(other)
	def *(other)
	
	#reciben una matriz y retorna una nueva matriz con el resultado
```

###Aclaración
Los métodos implementados solo funcionan para una Matriz x Matriz_Dispersa o viceversa.

Ejemplo:

```ruby
	A = Matriz.new([[2,2,3],[0,7,7],[7,0,9]])
    B = Matriz_Dispersa.new([[0,3,0],[0,1,0],[7,0,0]])

    puts A-B
    puts B-A
```
 Para realizar las operaciones entre Matrices 'normales' se utilizan los métodos de la clase Matriz
 
##Estructura de la clase Fracción

###Variables y métodos básicos para que funcionen las especificaciones requeridas

```ruby
	def initialize(numerador,denominador)

	#recibe la fraccion de dos partes
	#numerador y denominador

	#Métodos necesarios para el funcionamiento: Suma, Resta y Producto
	def +(other)
	def -(other)
	def *(other)

	#reciben una fraccion y retorna una nueva fraccion con el resultado
```

## Installation

Add this line to your application's Gemfile:

    gem 'Matriz'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install Matriz

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
