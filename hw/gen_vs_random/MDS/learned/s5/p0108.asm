.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
or bl, al
xor sil, dil
xor al, 8
and rax, -1931765367
and dil, -62
xor ax, -4010
bts edi, 248
and bl, al
xor cl, 24
and esi, 68
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
and ax, -16061
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
