.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edx
bts rax, 140
and al, -119
setno bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
dec rcx
cbw
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 90 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
cmp eax, 49
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75
sub dl, al
btc dx, 69
imul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
