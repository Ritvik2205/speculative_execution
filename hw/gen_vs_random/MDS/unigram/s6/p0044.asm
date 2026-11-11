.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
cmovp edx, ecx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
bts di, 37
and bl, 68
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 43
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
cmovnp rsi, rbx
and rdi, rsi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and al, 2 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
xor cl, 24
xor dil, dl
test bl, -14
and bx, si
bt edi, 17
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
or al, 24
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
