.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 89
xor al, sil
or bl, -62
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
not ebx
xor cl, 55
xor rdi, -9
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and ax, -4410
test rax, 1949278494
and ax, -10351
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
