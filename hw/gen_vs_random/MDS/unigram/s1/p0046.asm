.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 16 # instrumentation
cmovle esi, esi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and bl, 120 # instrumentation
cmovnp bx, cx
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
xor al, dl
cmovnb ax, dx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and al, -15 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and dil, 57 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and dl, 8 # instrumentation
cmovle di, dx
xor dx, 92
and al, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
cmovz rsi, rdx
and cl, dl
cmovle ax, cx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
