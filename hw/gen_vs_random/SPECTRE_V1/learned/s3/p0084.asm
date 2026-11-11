.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
lea rdi, qword ptr [rbx + rbx]
or al, bl
sub al, 63
btr rcx, 158
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
mov bl, dil
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
