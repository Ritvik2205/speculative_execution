.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx], 33
sub al, sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
btr bx, 104
btc ax, cx
test al, -82
sub rax, 1806572419
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
