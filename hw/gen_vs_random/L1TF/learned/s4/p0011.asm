.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, bx
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
sbb cl, sil
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
and dl, 10
xor sil, 64
sub al, sil
lea rdx, qword ptr [rdi + rdx + 49]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
