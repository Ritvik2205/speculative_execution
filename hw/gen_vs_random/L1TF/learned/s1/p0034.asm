.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
sub al, -75
xor eax, -69
jmp .bb_0.1
.bb_0.1:
or al, cl
or ax, -18131
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test dl, 84
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
