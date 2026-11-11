.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 8
and al, -68
or dil, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and edx, 99
and al, al
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], bx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and ax, 37
add al, 117
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
test cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
