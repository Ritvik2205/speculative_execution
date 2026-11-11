.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], di
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dil
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc dl
xchg cl, dil
lea rcx, qword ptr [rdx + rdi + 62]
sbb dl, 127
movsx edx, dl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
sbb cl, dil
jb .bb_0.2
jmp .exit_0
.bb_0.2:
sub dx, -23
lea rsi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
