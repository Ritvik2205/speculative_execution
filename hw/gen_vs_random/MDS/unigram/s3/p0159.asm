.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
cmovnb rsi, rax
cmovnb rdx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdx]
or dil, -78
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 38
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdi
bts dx, ax
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and al, al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
cmovp ebx, edi
btr rsi, 146
or rcx, -17
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
