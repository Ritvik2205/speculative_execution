.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
lea eax, qword ptr [rdx + rdx + 45]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and dil, -82
jmp .bb_0.1
.bb_0.1:
test cl, 8
lea dx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
inc al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
