.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, 16353
cmovo rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
and ebx, edx
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 19
xor ax, 23633
and rcx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
btc cx, 115
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
or bx, ax
cmovz ecx, ecx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
