.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], si
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
test dil, -116
sub sil, cl
inc bl
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
xor dl, bl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -13
sbb cl, 105
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
test al, 84
or al, 19
adc dil, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
