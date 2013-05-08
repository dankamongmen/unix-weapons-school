	xor bx,bx
	mov cx,50
erp:
	add bx,bx,1
	add dx,dx,dx
	add dx,dx,dx
	cmp cx,bx
	jg erp
