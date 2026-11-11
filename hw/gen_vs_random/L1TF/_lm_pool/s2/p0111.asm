.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
test al, 15
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
test rcx, 78
and dil, -22
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
bt ebx, edi
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 14
or al, -57
xor ax, 22976
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
