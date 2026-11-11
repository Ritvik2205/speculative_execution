.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
cmp rcx, 33
test dil, dl
cmp dil, bl
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
sub al, dl
dec dl
add cl, -127
js .bb_0.1
jmp .exit_0
.bb_0.1:
add ecx, 79
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
