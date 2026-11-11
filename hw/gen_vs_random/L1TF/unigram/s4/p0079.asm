.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
cmp eax, 951020724
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
add bl, -109 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
add al, -5 # instrumentation
adc dil, al
add cl, cl
add cl, -94 # instrumentation
setnb dl
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
mov al, al
xchg eax, edx
cmovp ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
