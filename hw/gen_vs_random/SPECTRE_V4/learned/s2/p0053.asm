.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, al
dec bl
cmp al, 109
xor cx, -80
xor bx, cx
or bl, bl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
dec dil
mov al, dl
add al, 40
or dl, -26
sbb bl, al
cmp al, -106
xor al, 99
cmp rax, 1097504565
sbb dil, cl
cmp dil, 101
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
mov bl, al
cmp al, cl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
sbb cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
