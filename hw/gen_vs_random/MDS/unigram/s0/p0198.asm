.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 75
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 13
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
or dil, dil
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
or al, sil
and di, bx
and bl, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
not rsi
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
and bx, 14
cmovs cx, cx
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
and dil, -39
btc si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
