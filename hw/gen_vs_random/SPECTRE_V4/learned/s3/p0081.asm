.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
test al, 18
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
xor al, sil
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
and al, 85
or edx, -83
or bl, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and di, -65
and rax, -779592432
add dl, cl
or bl, dl
sub cl, sil
and cl, -118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
