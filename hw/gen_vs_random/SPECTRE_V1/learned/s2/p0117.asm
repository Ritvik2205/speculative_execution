.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dl
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
lea rsi, qword ptr [rbx + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
cmp dil, al
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
sbb al, dl
and bl, dil
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
