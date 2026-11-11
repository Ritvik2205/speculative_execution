.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
and bl, al
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
add al, 74
jmp .bb_0.1
.bb_0.1:
add dl, -56 # instrumentation
cmovs rdx, rdi
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
or rax, 1808026647
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
