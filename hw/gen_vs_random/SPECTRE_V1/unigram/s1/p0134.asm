.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
cbw
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
or dil, cl
imul al
test dx, 99
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 100
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 78
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 92
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 63
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 85
and rbx, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
