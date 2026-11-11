.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
and ebx, 82
test cl, -18
or bl, dil
or dl, -31
jmp .bb_0.1
.bb_0.1:
btr ax, dx
btr bx, si
bt bx, si
test sil, 41
jmp .bb_0.2
.bb_0.2:
test dl, al
and al, al
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
test dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
