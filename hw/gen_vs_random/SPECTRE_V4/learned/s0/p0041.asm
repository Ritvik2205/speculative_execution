.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 17
cmp rbx, -3
cmp al, cl
sbb esi, 4
cmp bl, -16
sub al, 63
adc bl, dil
cmp ecx, 15
add bl, dil
cmp edx, -95
or al, al
or al, -90
sub al, 29
and bl, 76
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx]
or al, al
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
