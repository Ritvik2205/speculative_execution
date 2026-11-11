.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
or dl, -115
or cl, 100
xor dil, 87
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
xor sil, 67
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
bt ebx, 107
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
btc rcx, 46
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 76
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
cmovnbe bx, cx
cmovl edi, edi
or rdi, 67
and cl, 102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
and bl, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
and dl, -26 # instrumentation
cmovnp rsi, rdx
btr bx, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
