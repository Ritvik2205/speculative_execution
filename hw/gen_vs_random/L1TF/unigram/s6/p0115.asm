.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, dl
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
cmovl dx, dx
add bl, 3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
imul si, ax, 21
dec dil
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
jmp .bb_0.1
.bb_0.1:
add dl, 85 # instrumentation
cmovp ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
cmovp rdi, rbx
neg sil
imul rbx, rdx
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], di
bts ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
