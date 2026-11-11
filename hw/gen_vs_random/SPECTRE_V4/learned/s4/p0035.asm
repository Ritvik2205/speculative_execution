.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, 123
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
test rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
xchg dx, si
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
sbb dl, dil
cmovb esi, ebx
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
add bl, bl
cmovz edx, edi
or dl, dl
and al, -127
sub cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
