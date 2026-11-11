.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -62
cmovb edi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 99
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and bl, -99 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
cmovo eax, ecx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
xor dil, dl
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
not rax
xor ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
