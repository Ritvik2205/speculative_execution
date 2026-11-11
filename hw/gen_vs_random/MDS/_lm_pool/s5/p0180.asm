.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or al, 74
and esi, 13
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
or al, 24
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
test edx, -1561252782
test cl, dl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sub al, 90
and ax, 29207
or bl, 127
cmovnp rsi, rcx
test rcx, -613256812
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
test bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
