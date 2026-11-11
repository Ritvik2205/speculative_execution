.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
cmovle eax, edx
or cl, 100
and dl, -33 # instrumentation
cmovns rcx, rcx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
or bl, -98
cmovnbe si, cx
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
or dl, sil
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
bt ecx, 13
xor edi, 74
and ax, cx
or dl, -18
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
