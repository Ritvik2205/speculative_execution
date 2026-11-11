.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rcx]
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
add al, 66 # instrumentation
cmovnp ecx, esi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], bx
and bl, bl
jmp .bb_0.1
.bb_0.1:
and bl, 89
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
add cl, -70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
lea ax, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
xchg esi, eax
add cl, cl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], di
btc edi, edi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
setnz dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
