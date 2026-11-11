.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp rbx, rax
or sil, al
cmovp eax, ebx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 33
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
cmovnp rcx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
and cl, sil
and al, sil
cmovz si, bx
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
