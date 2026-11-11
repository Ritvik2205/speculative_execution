.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, -51
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and al, 76
jmp .bb_0.1
.bb_0.1:
xor al, -127
lea rax, qword ptr [rdx + rcx + 54]
jmp .bb_0.2
.bb_0.2:
add dx, cx
cmovle si, si
xor cl, 3
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
bts eax, edi
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
