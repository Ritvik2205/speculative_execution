.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
sub al, bl
and rax, 1163013815
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
test al, -70
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rsi + rbx + 35]
and sil, 93
lea dx, qword ptr [rdi + rcx]
xor bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
