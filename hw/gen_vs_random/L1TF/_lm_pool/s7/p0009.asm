.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
or al, -57
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
sub al, -97
and al, cl
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
