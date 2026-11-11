.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdx, -19
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rax
lea rdx, qword ptr [rdx + rsi]
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], cl
lea rax, qword ptr [rdi + rdx + 14]
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
btr rdx, rax
add rax, -845342150
bt ebx, 45
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
setns dl
add al, 123 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], bx
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
bt eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
