.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
or al, sil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
btr rsi, 146
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and cx, -8
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
not rsi
or dl, -89
test si, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
