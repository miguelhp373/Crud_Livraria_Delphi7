DROP	PROCEDURE GER_LIVROS_MANUTENCAO
GO
CREATE	PROCEDURE GER_LIVROS_MANUTENCAO
(
@INP_PAR_TYPE_OPERATION		VARCHAR(003)	,
@INP_COD_LIVRO			INTEGER		,
@INP_DESCRI_LIVRO		VARCHAR(255)	,
@INP_PRECO_LIVRO		FLOAT
)
WITH
ENCRYPTION
AS
DECLARE
@V_LIVRO_COD	INTEGER


	IF	@INP_PAR_TYPE_OPERATION  = 'MNT' GOTO MANUTENCAO
	IF	@INP_PAR_TYPE_OPERATION  = 'EXC' GOTO EXCLUSAO


-------------------------------------------
MANUTENCAO:
-------------------------------------------

IF @INP_COD_LIVRO > 0 GOTO ALTERACAO
IF @INP_COD_LIVRO = 0 GOTO INCLUIR

GOTO FAZ_NADA


--------------------------------------------
ALTERACAO:
--------------------------------------------

	UPDATE LIVROS 
	SET
		DESCRICAO	=	@INP_DESCRI_LIVRO,
		PRECO		=	@INP_PRECO_LIVRO
	WHERE	CODIGO		=	@INP_COD_LIVRO

GOTO FAZ_NADA
--------------------------------------------
INCLUIR:
--------------------------------------------

	INSERT INTO LIVROS
	(
	DESCRICAO,
	PRECO
	)
	VALUES
	(
	@INP_DESCRI_LIVRO,
	@INP_PRECO_LIVRO
	)


GOTO FAZ_NADA

--------------------------------------------
EXCLUSAO:
--------------------------------------------

	DELETE FROM LIVROS
	WHERE	CODIGO		=	@INP_COD_LIVRO

GOTO FAZ_NADA
--------------------------------------------
FAZ_NADA:
--------------------------------------------
RETURN