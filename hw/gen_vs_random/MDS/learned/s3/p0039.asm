.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
cmovl eax, eax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -65
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
adc rsi, 35
xor al, 77
and al, 33 # instrumentation
cmovnle edx, ecx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 79
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
cmp dl, bl
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
