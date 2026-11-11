.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 2
xor al, 14
sub al, 88
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
add al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 92
sub ebx, 73
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
btc esi, ecx
bt di, bx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -68
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
setle dl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 55
sbb sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
