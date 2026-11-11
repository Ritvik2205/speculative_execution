.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 97
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, -65
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
test dil, -116
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
lea dx, qword ptr [rsi]
test cl, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
