.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
setp bl
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
xor rdx, 122
test di, 98
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
