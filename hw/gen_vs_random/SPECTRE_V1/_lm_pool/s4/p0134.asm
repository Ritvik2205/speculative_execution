.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], si
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 34
lea rdx, qword ptr [rcx + rdi + 74]
sub dil, -32
add al, -13
adc dil, 14
sub dl, cl
xchg ebx, edx
sub cl, -21
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
