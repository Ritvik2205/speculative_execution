.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
sub dil, dl
sub al, -89
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
cmp al, 23
sub bl, dl
sub cl, bl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
sbb bl, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
