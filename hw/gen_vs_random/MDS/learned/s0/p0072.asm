.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
or bl, bl
and bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and cl, dil
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
or rbx, -72
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
not dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
