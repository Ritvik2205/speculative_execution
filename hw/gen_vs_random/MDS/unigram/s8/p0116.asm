.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and al, -97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
xor ax, -12492
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 22
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rcx]
not dil
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 79
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
or dil, dil
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
cmovb rsi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and dl, 91 # instrumentation
cmovnle esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
