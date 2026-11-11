.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 5
sub dl, sil
sub al, sil
xor dl, bl
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
xchg bl, cl
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
adc cl, bl
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
and di, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
