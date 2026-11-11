.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test sil, 112
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
setns dl
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 28
setns dl
cmovnbe cx, ax
test al, 70
xor di, 80
or cl, dil
and di, si
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx]
test cl, -49
xor esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
