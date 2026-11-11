.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
sbb ax, -9869
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 38
xor sil, bl
or al, dil
or al, cl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
xor sil, dl
sub rcx, -90
jmp .bb_0.1
.bb_0.1:
test cl, 77
jmp .bb_0.2
.bb_0.2:
test bl, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
