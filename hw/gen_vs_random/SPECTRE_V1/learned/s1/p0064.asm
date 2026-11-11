.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
and dl, -111
xor al, cl
or cl, bl
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
lea ecx, qword ptr [rdx + rbx + 31]
xchg rdi, rax
and cl, al
sbb eax, 1392087754
sbb sil, dil
adc cl, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
