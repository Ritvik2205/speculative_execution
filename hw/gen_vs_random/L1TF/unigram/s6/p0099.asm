.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 86
cmovb eax, eax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rcx]
add al, 56
and ax, dx
and bl, dil
test cx, 36
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
cmp sil, sil
not dx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
cmovl rcx, rcx
xor cl, sil
xor dil, bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 4
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
