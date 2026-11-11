.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rdi, 61
add cl, -127
and rdi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdi]
xchg cl, cl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rcx
test sil, 97
add rax, 6
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
sub rbx, -11
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
cmovp cx, cx
cwd
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
