.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, ax
sub rcx, 13
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or al, 19
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi]
adc ecx, 33
and cx, 99
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
