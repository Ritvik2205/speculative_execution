.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rax
btc rdi, rdx
cmovl rax, rsi
and dl, cl
cmovno di, ax
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
xor sil, 32
or cl, bl
jmp .bb_0.1
.bb_0.1:
test dl, dil
or bl, 84
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
xor cx, 35
and dx, si
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 75
and ax, dx
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
