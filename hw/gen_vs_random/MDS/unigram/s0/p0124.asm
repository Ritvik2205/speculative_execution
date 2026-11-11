.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
cmovo edi, eax
xor ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
and cx, -8
btc bx, 104
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 13
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
test dil, dil
cmovnb dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
