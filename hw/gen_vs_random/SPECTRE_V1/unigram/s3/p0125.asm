.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt esi, 96
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
sub ax, -16648
add al, 40 # instrumentation
btc rax, rax
add bl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
bt rdx, rdx
loop .bb_0.1
jmp .exit_0
.bb_0.1:
or rcx, 94
lea rdx, qword ptr [rsi + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -73
setnb al
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 22
cmp rbx, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
