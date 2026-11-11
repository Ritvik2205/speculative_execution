.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -259018739
cmp al, al
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 80
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 85
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 60
add bl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
sub ax, -12040
adc bl, bl
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
imul cx, ax, 59
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 101
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
