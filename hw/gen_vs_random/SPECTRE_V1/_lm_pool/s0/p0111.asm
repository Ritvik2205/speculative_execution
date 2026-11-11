.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], si
cmp dl, al
inc sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
cmp cl, 52
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, cl
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
test sil, 47
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
