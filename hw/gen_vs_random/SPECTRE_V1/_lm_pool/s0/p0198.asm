.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
add dl, 47
sub al, cl
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
dec al
jl .bb_0.2
jmp .exit_0
.bb_0.2:
lea dx, qword ptr [rdx]
and al, dil
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test cl, -120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
