.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, dl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 56
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
xor esi, edi
and cl, -44 # instrumentation
cmovno rdx, rax
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
bt rsi, 238
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
cmovnl rbx, rax
and dl, -59 # instrumentation
cmovbe ax, cx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
or rsi, 42
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdi], si
and al, -26 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
btc di, ax
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
