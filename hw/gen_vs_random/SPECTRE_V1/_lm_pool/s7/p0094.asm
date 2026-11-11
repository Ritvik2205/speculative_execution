.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, ax
sbb cl, bl
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 27
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, 54
sbb ecx, 45
add bl, 70
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and si, 74
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
add al, -72
test ax, 19339
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
