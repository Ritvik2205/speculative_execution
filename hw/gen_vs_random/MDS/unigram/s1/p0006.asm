.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 184
and rcx, rdx
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
or dx, 125
test sil, -96
cmovno dx, dx
bts ebx, 205
cmovbe ecx, eax
and rdi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdi]
and al, 20 # instrumentation
cmovp dx, cx
bts ax, bx
cmovnbe esi, esi
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
btc edx, 7
cmovnb ecx, edx
and rax, 1886208862
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
cmovs rax, rdx
and bl, 15 # instrumentation
cmovb si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
