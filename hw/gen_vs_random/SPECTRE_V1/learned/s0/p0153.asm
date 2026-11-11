.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 60
cmp rax, -1877933118
setns cl
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and eax, 933895314
sub cl, bl
xor eax, 55
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dl, -36
add sil, -68
add sil, -68
sbb al, cl
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
