.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
cmovnb di, bx
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edi
or cl, dil
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
or al, bl
bt dx, 162
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
and sil, -9
cmovnl eax, eax
or bl, al
cmovl rax, rdx
cmovns rdx, rdx
btc ax, dx
and al, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
