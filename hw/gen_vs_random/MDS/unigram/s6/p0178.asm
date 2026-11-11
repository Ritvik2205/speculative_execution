.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb di, cx
and rcx, -63
cmovo dx, di
or al, dl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
not bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
test dl, cl
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
or rdx, -109
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or bl, bl
cmovnl rdx, rdi
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
