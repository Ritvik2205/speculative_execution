.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, ecx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 43
cmovnz eax, esi
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
and dl, 120 # instrumentation
cmovnz eax, ebx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 15
not cl
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
btc cx, 115
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 5
btc rax, 106
and cl, al
and dl, 101 # instrumentation
cmovno ebx, edx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 32
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and bl, bl
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
cmovo bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
