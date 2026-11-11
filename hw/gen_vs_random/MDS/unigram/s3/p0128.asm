.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 86
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
test al, al
or bl, dl
xor al, dl
xor bl, cl
cmovnp si, cx
xor ax, -1005
and dl, bl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdi
cmovnb esi, ecx
jmp .bb_0.1
.bb_0.1:
bts rdx, rbx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 83
cmovz esi, esi
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
bts dx, 50
bt ecx, 56
test al, al
and dl, 37 # instrumentation
cmovnbe dx, di
test ebx, -2015966884
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
