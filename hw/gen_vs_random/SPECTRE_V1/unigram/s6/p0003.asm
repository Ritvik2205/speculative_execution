.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, 30
neg edi
xchg ecx, edi
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
xor bl, -38
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
lea rdx, qword ptr [rdx]
cbw
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 720259356
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
