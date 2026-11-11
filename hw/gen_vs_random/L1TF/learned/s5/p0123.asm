.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 105
btr ax, di
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
xor sil, 64
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi]
btc edx, 25
sbb cl, dil
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
and al, -68
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
