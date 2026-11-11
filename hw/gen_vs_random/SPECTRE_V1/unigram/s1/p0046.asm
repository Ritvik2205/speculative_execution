.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, dil
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
cmovp ax, ax
bswap rax
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
xor cl, -91
loope .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
test al, sil
imul edx
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
