	xor bx,bx
	mov cx,50
erp:
	add bx,bx,1
	add dx,dx,dx
	add ax,ax,ax
	cmp cx,bx
	jg erp
