.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
add cl, bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
sub dl, -29
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
setns dl
cmovnbe cx, ax
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 5
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
