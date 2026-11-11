.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 18
or al, cl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 2
test ecx, 51
xchg rax, rcx
and ax, 25351
xor rbx, 50
cmp dil, sil
or dx, 57
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
