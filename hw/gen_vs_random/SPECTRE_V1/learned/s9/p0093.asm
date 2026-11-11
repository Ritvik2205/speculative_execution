.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 13
sbb bl, -41
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub sil, -18
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
lea rdx, qword ptr [rdi + rax + 61]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
