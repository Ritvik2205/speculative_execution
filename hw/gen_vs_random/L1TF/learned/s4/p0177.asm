.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
sub al, 28
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rcx
or al, bl
and rcx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rcx]
setbe cl
or cl, 43
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -93
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
xor al, -127
cmovbe eax, edx
sbb al, 47
xor si, 84
sbb cl, -123
or bl, al
lea edx, qword ptr [rcx + rbx + 98]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
