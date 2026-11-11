.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and eax, esi
btr rdx, rdi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and dl, 32 # instrumentation
cmovnbe edx, esi
and dl, dl
and sil, -56
and rsi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rsi]
xor sil, cl
and rcx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rcx]
and sil, 66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
test sil, cl
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
