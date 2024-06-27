extends CharacterBody2D

#variavel da velocidade do jogador (pode ser alterada)
var velocidade = 300
#variavel de direção x, y : Vector(X, Y)
var direcao : Vector2 = Vector2(0, 0)

#funcão ao precionar WASD no teclado
func movimentacao() -> void:
	if Input.is_action_pressed("up"):
		direcao.y = -1 
	elif Input.is_action_pressed("down"):
		direcao.y = 1
	else:
		direcao.y = 0
		
	if Input.is_action_pressed("left"):
		direcao.x = -1
	elif Input.is_action_pressed("right"):
		direcao.x = 1
	else:
		direcao.x = 0

#chamando a função @movimentação pra mover o personagem
func _process(delta):
	movimentacao() 
	move_and_slide()
	velocity = direcao * velocidade
