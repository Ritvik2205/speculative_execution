.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
test bl, al
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
xor al, -19
adc dil, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
