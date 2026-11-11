.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor esi, ebx
setnp dl
add bl, 97 # instrumentation
cmovnb dx, ax
add al, 36 # instrumentation
cmovnp rax, rbx
setp dl
add dl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 27
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rax
lea rax, qword ptr [rdx + rcx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea ebx, qword ptr [rsi]
test cx, si
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 1594154558
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
