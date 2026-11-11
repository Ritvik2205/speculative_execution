.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ax, si
test edi, 96
add dl, 26
add cl, 75 # instrumentation
sbb dil, bl
add cl, -26 # instrumentation
cmovnp di, bx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
add al, 51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
btc ebx, 29
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 90
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rcx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 25
mov sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
