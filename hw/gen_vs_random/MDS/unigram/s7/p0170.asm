.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 91
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 9
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
bt cx, ax
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 95
xor edx, edx
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and bl, 66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and al, 87
and rdx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and dil, -62
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
and dl, 91 # instrumentation
cmovnle eax, eax
and rbx, 65
and sil, 89
btc rdx, 82
xor al, 122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
