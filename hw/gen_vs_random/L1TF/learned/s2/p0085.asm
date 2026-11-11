.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb cl, cl
or edx, edi
jmp .bb_0.1
.bb_0.1:
and eax, -409673666
xor sil, al
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
and esi, 27
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -98
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
