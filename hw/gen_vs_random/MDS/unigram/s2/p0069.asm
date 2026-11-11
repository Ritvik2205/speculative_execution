.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 66 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
test dil, dl
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
cmovz rax, rsi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
and rcx, rdi
jmp .bb_0.1
.bb_0.1:
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
btc edx, 75
btc bx, 58
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and eax, eax
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
