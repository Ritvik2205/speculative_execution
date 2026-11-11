.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, rbx
cmovnp ecx, edx
add bl, 115 # instrumentation
setz bl
cmovo rax, rdx
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdx]
sbb dil, sil
add bl, 68
xor rax, 20
bswap edx
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
sub cx, 16
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
xchg sil, cl
xor sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
