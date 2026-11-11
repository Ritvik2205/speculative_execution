.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 33
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
bt eax, 99
and bl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
xor al, 78
test bl, 106
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
bt ecx, 3
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
xor esi, esi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
test sil, 3
and dl, -107 # instrumentation
cmovz rcx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
