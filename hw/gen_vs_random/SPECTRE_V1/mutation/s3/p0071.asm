.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg dl, bl
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rdx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -73
sbb dil, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
sub dl, 71
inc bl
lea ax, qword ptr [rdx + rax + 36518]
test cl, -120
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
