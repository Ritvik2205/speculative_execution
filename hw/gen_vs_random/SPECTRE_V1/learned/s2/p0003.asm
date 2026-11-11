.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdx]
dec sil
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
add ax, 6656
and dl, -111
sub al, dil
add di, 44
adc eax, 56
add al, -72
cmp al, sil
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
