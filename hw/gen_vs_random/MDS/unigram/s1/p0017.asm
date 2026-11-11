.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 84
cmovb edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
and cl, -3 # instrumentation
cmovnb cx, bx
and dl, -1 # instrumentation
cmovnb cx, di
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -47
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and ax, 15401
or dl, -115
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
cmovnb cx, cx
btr rax, rax
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and edi, 3
or al, cl
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
bts edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
