.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ecx
and cl, 79
xor dil, -70
jmp .bb_0.1
.bb_0.1:
test eax, 343548072
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
xor sil, dl
xor rbx, 89
or bl, cl
bts rdi, rbx
or sil, -78
test bl, dil
test al, sil
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
or sil, dl
or rax, 1020005579
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
