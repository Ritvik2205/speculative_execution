.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and cl, -57
test dil, -116
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
cmovnb rdx, rax
jno .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, -114
cmp eax, esi
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
lea rax, qword ptr [rax + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
cmovnle esi, edi
or rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
