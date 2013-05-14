	xor bx,bx
	mov cx,50
erp:
	add bx,1
	add dx,dx
	add dx,dx
	cmp cx,bx
	jg erp
