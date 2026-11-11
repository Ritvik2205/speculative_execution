.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -98
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 75
and al, -3 # instrumentation
cmovnb ax, cx
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rdx]
or si, 24
and bl, sil
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
and si, 51
jmp .bb_0.1
.bb_0.1:
and dil, dl
and bx, dx
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 11
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
or bl, bl
and si, cx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 53
bts rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
