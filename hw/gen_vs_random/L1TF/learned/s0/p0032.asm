.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
or esi, edi
add dil, cl
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea rdx, qword ptr [rcx + rbx]
jmp .bb_0.3
.bb_0.3:
lea ax, qword ptr [rdx + rsi + 70]
cmp dil, sil
and dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
