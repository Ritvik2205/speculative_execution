.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc esi, -39
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
cmovnl ecx, edx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
cmp cl, 55
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], 117
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
seto dl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
setbe bl
imul rbx
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 34
cmp rdx, rax
setbe dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
