.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -115 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
cmovz ebx, ecx
and cl, -49 # instrumentation
cmovno cx, di
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
cmovns rsi, rdx
bts eax, 103
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 21
btr ecx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 13
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
