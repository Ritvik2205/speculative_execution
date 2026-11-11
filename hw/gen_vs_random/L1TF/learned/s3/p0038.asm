.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
sub al, bl
xor dl, cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
sub cl, 86
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and al, al
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
or dil, -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
