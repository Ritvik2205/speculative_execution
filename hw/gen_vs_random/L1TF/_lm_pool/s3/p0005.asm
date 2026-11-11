.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 91
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
and al, -68
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
xor ax, -16232
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rax]
cmp al, cl
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
