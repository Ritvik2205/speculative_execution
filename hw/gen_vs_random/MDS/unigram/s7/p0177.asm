.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
and rbx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and dl, -72 # instrumentation
not sil
and al, 39 # instrumentation
cmovbe ax, cx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdx]
test al, 22
test cx, 401
xor rbx, 89
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], eax
cmovnl esi, edx
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
and al, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
