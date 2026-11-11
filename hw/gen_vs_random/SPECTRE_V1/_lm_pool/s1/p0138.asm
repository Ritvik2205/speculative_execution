.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 61
sbb dil, sil
xor dil, cl
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 45
add sil, dil
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
lea rax, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
test cl, -33
js .bb_0.1
jmp .exit_0
.bb_0.1:
jno .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
