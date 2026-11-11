.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
adc bl, -73
xchg edx, esi
xor cl, 78
lea cx, qword ptr [rbx + rdi + 7]
test sil, -31
sbb bl, al
sub al, 63
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
adc dl, -49
or rdx, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
