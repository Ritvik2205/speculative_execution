.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
or sil, -78
test dil, 46
and bl, dl
jmp .bb_0.1
.bb_0.1:
xor dil, 8
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 29
and eax, -574348013
or al, -17
xor si, 91
and al, cl
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], esi
jmp .bb_0.2
.bb_0.2:
test bl, dl
and esi, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
