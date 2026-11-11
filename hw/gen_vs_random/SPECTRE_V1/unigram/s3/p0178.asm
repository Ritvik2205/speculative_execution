.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
neg cl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
add sil, dil
imul rdx, rsi, 87
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
add bl, -5 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
test bl, -8
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add ecx, 69
xor bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
