.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 63
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
bts rdi, rdx
or ax, bx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
and bl, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 82
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovnl cx, ax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
or dl, -18
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
cmovnb rsi, rsi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
cmovz rbx, rdi
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
or dil, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
