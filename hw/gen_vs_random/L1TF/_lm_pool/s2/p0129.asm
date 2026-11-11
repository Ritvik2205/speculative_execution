.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 35
sub al, dil
xor rbx, 6
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 39
lea edi, qword ptr [rdi + rcx + 74]
xor al, dil
test dl, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
