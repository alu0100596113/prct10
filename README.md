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
