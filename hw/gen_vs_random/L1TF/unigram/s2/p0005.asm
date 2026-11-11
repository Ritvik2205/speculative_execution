.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rdi], dx
add dil, 30 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
imul rdx, rcx, 28
setz dl
inc rdx
dec esi
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
mov bl, sil
and rdi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
or dl, cl
sub sil, -99
add cl, 40 # instrumentation
cmovbe di, si
inc esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
