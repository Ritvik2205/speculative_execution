.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx], 62
jmp .bb_0.1
.bb_0.1:
test al, -104
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 7
jmp .bb_0.3
.bb_0.3:
setle cl
sub cl, 86
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
or cl, bl
add ecx, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
