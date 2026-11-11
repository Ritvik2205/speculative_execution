.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
adc bl, -14
test al, dl
xor al, 45
and sil, 93
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
lea bx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
test ecx, 81
jmp .bb_0.1
.bb_0.1:
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
