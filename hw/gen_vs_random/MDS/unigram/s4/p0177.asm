.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 0b1000000000000000 # instrumentation
bsf di, bx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
and al, al
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
and cl, -85 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
not bl
or sil, al
and eax, 561041355
or dil, -71
cmovz cx, si
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
and dil, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
test bl, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
