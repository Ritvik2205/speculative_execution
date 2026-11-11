.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rcx + rdx + 45]
adc bx, 18
sbb cl, 105
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
sbb rax, 1161375577
setns cl
and rsi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 5
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rax
test dil, -116
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1194753120
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
