.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], esi
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 22
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
xor cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
cmovo di, di
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 53
cmovs rdi, rax
cmovz cx, ax
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
