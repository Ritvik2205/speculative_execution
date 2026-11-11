.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
bts rsi, rax
test dil, al
cmovnp di, di
test al, al
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
btc bx, 58
test dl, 48
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdi
or di, 46
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rax], edi
and dl, 81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and ax, -10351
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
cmovz rax, rsi
or dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
