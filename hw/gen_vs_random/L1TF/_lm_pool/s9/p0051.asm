.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
sub al, sil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 29
cmp ebx, 96
bts ax, 201
adc ax, 87
sbb edx, 23
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rcx, rax
and dil, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
