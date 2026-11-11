.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 82
bt edx, edx
and dl, -33 # instrumentation
cmovns rax, rax
bts cx, dx
cmovo rsi, rax
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
cmovz rcx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
and sil, -26 # instrumentation
cmovnp rax, rsi
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
jmp .bb_0.1
.bb_0.1:
and al, dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
cmovb ecx, edi
xor al, 78
or dl, cl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 89
or sil, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
