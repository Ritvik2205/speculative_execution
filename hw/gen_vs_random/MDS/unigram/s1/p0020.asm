.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rsi
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
test ebx, -2015966884
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 22
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
xor si, 91
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
xor al, 55
cmovnbe esi, eax
test edi, -1252846009
and ebx, 93
xor sil, 110
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 25
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and cl, 11 # instrumentation
cmovp ebx, esi
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
test bx, 4954
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
