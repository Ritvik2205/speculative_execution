.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno edi, edx
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
xor al, dil
and dil, dil
test cx, dx
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 27
and edx, eax
cmovle dx, si
jmp .bb_0.1
.bb_0.1:
and sil, -35 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
or rdi, 21
and dl, 96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
or eax, 1725503461
xor dx, 21
cmovnle ax, bx
test bl, dil
or ax, -7150
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 33
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
