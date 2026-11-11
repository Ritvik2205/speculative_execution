.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
test sil, 29
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
sbb ebx, -116
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
sub dl, -78
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
