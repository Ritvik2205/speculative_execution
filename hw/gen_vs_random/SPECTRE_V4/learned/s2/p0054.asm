.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
sub dl, 107
sub al, dil
adc al, -117
movsx bx, cl
sub cl, -127
cmp al, bl
test eax, 1947430392
cmp al, dil
sub al, cl
sbb dil, sil
test al, cl
btc rax, rdx
cmovnz rcx, rbx
or dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
