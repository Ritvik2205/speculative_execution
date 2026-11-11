.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 17
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
or cl, 105
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
sub dil, -70
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
lea rax, qword ptr [rcx]
sub rdx, 17
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 46
sub bl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
