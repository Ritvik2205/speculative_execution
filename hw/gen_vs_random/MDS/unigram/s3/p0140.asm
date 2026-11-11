.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rcx
xor al, -89
cmovp dx, ax
xor dx, 81
and al, 17 # instrumentation
cmovnp esi, edi
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
or bx, cx
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
or rdx, -109
btc rax, 59
btc rcx, rdx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and dl, al
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
bt dx, 162
or eax, ebx
btr ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
