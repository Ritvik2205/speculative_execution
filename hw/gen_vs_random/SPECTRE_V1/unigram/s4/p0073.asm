.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 8
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -119
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
xchg al, bl
cbw
not sil
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 60
jp .bb_0.1
jmp .exit_0
.bb_0.1:
imul eax, eax, 33
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], cl
sub al, -66
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
bt rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
