.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
and eax, -574348013
or bl, bl
and sil, -56
or rbx, -72
and eax, -574348013
xor sil, 110
and dl, bl
xor ax, 23633
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
xor rdi, -9
xor al, 55
and di, 91
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
xor rdx, -59
and rax, -731384280
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
