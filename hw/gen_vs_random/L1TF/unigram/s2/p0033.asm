.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
sbb rdx, 81
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
btr edi, eax
xor bl, cl
cmovz edx, edi
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
add ax, 14
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
xor rbx, 89
sub cl, al
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], -10
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 39
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
mov sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
