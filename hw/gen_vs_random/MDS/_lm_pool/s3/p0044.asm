.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -59
or ebx, eax
jmp .bb_0.1
.bb_0.1:
test esi, 425331143
xor cl, 83
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
test sil, -96
and bl, 68
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
test edx, -1561252782
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
test dx, 16353
or rdx, -109
or dil, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
