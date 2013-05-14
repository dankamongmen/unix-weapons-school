	xor bx,bx
	mov cx,50
erp:
	add bx,1
	add dx,dx
	add ax,ax
	cmp cx,bx
	jg erp
