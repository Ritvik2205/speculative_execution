.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
cmp rbx, 93
test al, -56
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
add dl, -52 # instrumentation
adc cx, 50
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
sbb al, bl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 31
and rax, 1994547909
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
