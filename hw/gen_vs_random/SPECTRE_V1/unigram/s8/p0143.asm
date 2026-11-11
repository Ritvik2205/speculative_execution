.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle al
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 35
cmp bl, al
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
sbb sil, -78
add al, -44
mov al, dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
movzx eax, bl
or rsi, -14
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rbx
mov bl, cl
add dil, -47 # instrumentation
setbe dil
movzx ecx, bx
and bl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
